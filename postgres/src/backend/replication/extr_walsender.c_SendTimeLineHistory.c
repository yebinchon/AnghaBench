
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int rbuf ;
typedef scalar_t__ off_t ;
struct TYPE_4__ {int timeline; } ;
typedef TYPE_1__ TimeLineHistoryCmd ;
struct TYPE_5__ {char* data; } ;
typedef int StringInfoData ;
typedef int Size ;
typedef TYPE_2__ PGAlignedBlock ;


 scalar_t__ BYTEAOID ;
 scalar_t__ CloseTransientFile (int) ;
 int ERRCODE_DATA_CORRUPTED ;
 int ERROR ;
 int MAXFNAMELEN ;
 int MAXPGPATH ;
 int O_RDONLY ;
 int OpenTransientFile (char*,int) ;
 int PG_BINARY ;
 int SEEK_END ;
 int SEEK_SET ;
 scalar_t__ TEXTOID ;
 int TLHistoryFileName (char*,int ) ;
 int TLHistoryFilePath (char*,int ) ;
 int WAIT_EVENT_WALSENDER_TIMELINE_HISTORY_READ ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*,...) ;
 scalar_t__ lseek (int,int ,int ) ;
 int pgstat_report_wait_end () ;
 int pgstat_report_wait_start (int ) ;
 int pq_beginmessage (int *,char) ;
 int pq_endmessage (int *) ;
 int pq_sendbytes (int *,char*,int) ;
 int pq_sendint16 (int *,int) ;
 int pq_sendint32 (int *,scalar_t__) ;
 int pq_sendstring (int *,char*) ;
 int read (int,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static void
SendTimeLineHistory(TimeLineHistoryCmd *cmd)
{
 StringInfoData buf;
 char histfname[MAXFNAMELEN];
 char path[MAXPGPATH];
 int fd;
 off_t histfilelen;
 off_t bytesleft;
 Size len;






 TLHistoryFileName(histfname, cmd->timeline);
 TLHistoryFilePath(path, cmd->timeline);


 pq_beginmessage(&buf, 'T');
 pq_sendint16(&buf, 2);


 pq_sendstring(&buf, "filename");
 pq_sendint32(&buf, 0);
 pq_sendint16(&buf, 0);
 pq_sendint32(&buf, TEXTOID);
 pq_sendint16(&buf, -1);
 pq_sendint32(&buf, 0);
 pq_sendint16(&buf, 0);


 pq_sendstring(&buf, "content");
 pq_sendint32(&buf, 0);
 pq_sendint16(&buf, 0);
 pq_sendint32(&buf, BYTEAOID);
 pq_sendint16(&buf, -1);
 pq_sendint32(&buf, 0);
 pq_sendint16(&buf, 0);
 pq_endmessage(&buf);


 pq_beginmessage(&buf, 'D');
 pq_sendint16(&buf, 2);
 len = strlen(histfname);
 pq_sendint32(&buf, len);
 pq_sendbytes(&buf, histfname, len);

 fd = OpenTransientFile(path, O_RDONLY | PG_BINARY);
 if (fd < 0)
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not open file \"%s\": %m", path)));


 histfilelen = lseek(fd, 0, SEEK_END);
 if (histfilelen < 0)
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not seek to end of file \"%s\": %m", path)));
 if (lseek(fd, 0, SEEK_SET) != 0)
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not seek to beginning of file \"%s\": %m", path)));

 pq_sendint32(&buf, histfilelen);

 bytesleft = histfilelen;
 while (bytesleft > 0)
 {
  PGAlignedBlock rbuf;
  int nread;

  pgstat_report_wait_start(WAIT_EVENT_WALSENDER_TIMELINE_HISTORY_READ);
  nread = read(fd, rbuf.data, sizeof(rbuf));
  pgstat_report_wait_end();
  if (nread < 0)
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not read file \"%s\": %m",
       path)));
  else if (nread == 0)
   ereport(ERROR,
     (errcode(ERRCODE_DATA_CORRUPTED),
      errmsg("could not read file \"%s\": read %d of %zu",
       path, nread, (Size) bytesleft)));

  pq_sendbytes(&buf, rbuf.data, nread);
  bytesleft -= nread;
 }

 if (CloseTransientFile(fd) != 0)
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not close file \"%s\": %m", path)));

 pq_endmessage(&buf);
}

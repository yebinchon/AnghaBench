
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
typedef int off_t ;
typedef int XLogSegNo ;
typedef int XLogRecPtr ;
typedef int TimeLineID ;
typedef scalar_t__ Size ;


 int ENOENT ;
 int MAXFNAMELEN ;
 int MAXPGPATH ;
 int SEEK_SET ;
 scalar_t__ WalSegSz ;
 int XLByteInSeg (int,int ,scalar_t__) ;
 int XLByteToSeg (int,int ,scalar_t__) ;
 int XLogFileName (char*,int ,int ,scalar_t__) ;
 scalar_t__ XLogSegmentOffset (int,scalar_t__) ;
 int close (int) ;
 int errno ;
 int fatal_error (char*,char*,scalar_t__,...) ;
 scalar_t__ lseek (int,int ,int ) ;
 int open_file_in_directory (char const*,char*) ;
 int pg_usleep (int) ;
 int read (int,char*,int) ;
 scalar_t__ strerror (int) ;

__attribute__((used)) static void
XLogDumpXLogRead(const char *directory, TimeLineID timeline_id,
     XLogRecPtr startptr, char *buf, Size count)
{
 char *p;
 XLogRecPtr recptr;
 Size nbytes;

 static int sendFile = -1;
 static XLogSegNo sendSegNo = 0;
 static uint32 sendOff = 0;

 p = buf;
 recptr = startptr;
 nbytes = count;

 while (nbytes > 0)
 {
  uint32 startoff;
  int segbytes;
  int readbytes;

  startoff = XLogSegmentOffset(recptr, WalSegSz);

  if (sendFile < 0 || !XLByteInSeg(recptr, sendSegNo, WalSegSz))
  {
   char fname[MAXFNAMELEN];
   int tries;


   if (sendFile >= 0)
    close(sendFile);

   XLByteToSeg(recptr, sendSegNo, WalSegSz);

   XLogFileName(fname, timeline_id, sendSegNo, WalSegSz);







   for (tries = 0; tries < 10; tries++)
   {
    sendFile = open_file_in_directory(directory, fname);
    if (sendFile >= 0)
     break;
    if (errno == ENOENT)
    {
     int save_errno = errno;


     pg_usleep(500 * 1000);

     errno = save_errno;
     continue;
    }

    break;
   }

   if (sendFile < 0)
    fatal_error("could not find file \"%s\": %s",
       fname, strerror(errno));
   sendOff = 0;
  }


  if (sendOff != startoff)
  {
   if (lseek(sendFile, (off_t) startoff, SEEK_SET) < 0)
   {
    int err = errno;
    char fname[MAXPGPATH];

    XLogFileName(fname, timeline_id, sendSegNo, WalSegSz);

    fatal_error("could not seek in log file %s to offset %u: %s",
       fname, startoff, strerror(err));
   }
   sendOff = startoff;
  }


  if (nbytes > (WalSegSz - startoff))
   segbytes = WalSegSz - startoff;
  else
   segbytes = nbytes;

  readbytes = read(sendFile, p, segbytes);
  if (readbytes <= 0)
  {
   int err = errno;
   char fname[MAXPGPATH];
   int save_errno = errno;

   XLogFileName(fname, timeline_id, sendSegNo, WalSegSz);
   errno = save_errno;

   if (readbytes < 0)
    fatal_error("could not read from log file %s, offset %u, length %d: %s",
       fname, sendOff, segbytes, strerror(err));
   else if (readbytes == 0)
    fatal_error("could not read from log file %s, offset %u: read %d of %zu",
       fname, sendOff, readbytes, (Size) segbytes);
  }


  recptr += readbytes;

  sendOff += readbytes;
  nbytes -= readbytes;
  p += readbytes;
 }
}

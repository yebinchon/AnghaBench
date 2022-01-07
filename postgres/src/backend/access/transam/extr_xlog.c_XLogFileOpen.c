
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogSegNo ;


 int BasicOpenFile (char*,int) ;
 int MAXPGPATH ;
 int O_RDWR ;
 int PANIC ;
 int PG_BINARY ;
 int ThisTimeLineID ;
 int XLogFilePath (char*,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 int get_sync_bit (int ) ;
 int sync_method ;
 int wal_segment_size ;

int
XLogFileOpen(XLogSegNo segno)
{
 char path[MAXPGPATH];
 int fd;

 XLogFilePath(path, ThisTimeLineID, segno, wal_segment_size);

 fd = BasicOpenFile(path, O_RDWR | PG_BINARY | get_sync_bit(sync_method));
 if (fd < 0)
  ereport(PANIC,
    (errcode_for_file_access(),
     errmsg("could not open file \"%s\": %m", path)));

 return fd;
}

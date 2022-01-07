
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DEFAULT_XLOG_SEG_SIZE ;
 int O_CREAT ;
 int O_RDWR ;
 int S_IRUSR ;
 int S_IWUSR ;
 int close (int) ;
 int die (char*) ;
 int filename ;
 scalar_t__ fsync (int) ;
 int full_buf ;
 int needs_unlink ;
 int open (int ,int,int) ;
 scalar_t__ write (int,int ,scalar_t__) ;

__attribute__((used)) static void
test_open(void)
{
 int tmpfile;




 if ((tmpfile = open(filename, O_RDWR | O_CREAT, S_IRUSR | S_IWUSR)) == -1)
  die("could not open output file");
 needs_unlink = 1;
 if (write(tmpfile, full_buf, DEFAULT_XLOG_SEG_SIZE) !=
  DEFAULT_XLOG_SEG_SIZE)
  die("write failed");


 if (fsync(tmpfile) != 0)
  die("fsync failed");

 close(tmpfile);
}

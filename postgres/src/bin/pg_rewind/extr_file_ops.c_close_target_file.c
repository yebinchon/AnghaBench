
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ close (int) ;
 int dstfd ;
 int dstpath ;
 int pg_fatal (char*,int ) ;

void
close_target_file(void)
{
 if (dstfd == -1)
  return;

 if (close(dstfd) != 0)
  pg_fatal("could not close target file \"%s\": %m",
     dstpath);

 dstfd = -1;
}

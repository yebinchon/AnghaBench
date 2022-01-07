
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ereport (int,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char const*) ;
 scalar_t__ fsync_parent_path (char const*,int) ;
 scalar_t__ unlink (char const*) ;

int
durable_unlink(const char *fname, int elevel)
{
 if (unlink(fname) < 0)
 {
  ereport(elevel,
    (errcode_for_file_access(),
     errmsg("could not remove file \"%s\": %m",
      fname)));
  return -1;
 }





 if (fsync_parent_path(fname, elevel) != 0)
  return -1;

 return 0;
}

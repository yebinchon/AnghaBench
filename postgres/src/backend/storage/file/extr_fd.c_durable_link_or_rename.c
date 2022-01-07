
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ereport (int,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char const*,char const*) ;
 scalar_t__ fsync_fname_ext (char const*,int,int,int) ;
 scalar_t__ fsync_parent_path (char const*,int) ;
 scalar_t__ link (char const*,char const*) ;
 scalar_t__ rename (char const*,char const*) ;
 int unlink (char const*) ;

int
durable_link_or_rename(const char *oldfile, const char *newfile, int elevel)
{




 if (fsync_fname_ext(oldfile, 0, 0, elevel) != 0)
  return -1;
 if (rename(oldfile, newfile) < 0)
 {
  ereport(elevel,
    (errcode_for_file_access(),
     errmsg("could not rename file \"%s\" to \"%s\": %m",
      oldfile, newfile)));
  return -1;
 }






 if (fsync_fname_ext(newfile, 0, 0, elevel) != 0)
  return -1;


 if (fsync_parent_path(newfile, elevel) != 0)
  return -1;

 return 0;
}

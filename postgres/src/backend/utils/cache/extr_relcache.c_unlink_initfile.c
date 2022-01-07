
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOENT ;
 int ereport (int,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char const*) ;
 scalar_t__ errno ;
 scalar_t__ unlink (char const*) ;

__attribute__((used)) static void
unlink_initfile(const char *initfilename, int elevel)
{
 if (unlink(initfilename) < 0)
 {

  if (errno != ENOENT)
   ereport(elevel,
     (errcode_for_file_access(),
      errmsg("could not remove cache file \"%s\": %m",
       initfilename)));
 }
}

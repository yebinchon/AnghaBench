
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 int * first_dir_separator (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static void
check_restricted_library_name(const char *name)
{
 if (strncmp(name, "$libdir/plugins/", 16) != 0 ||
  first_dir_separator(name + 16) != ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("access to library \"%s\" is not allowed",
      name)));
}

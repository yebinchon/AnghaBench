
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*,char const*) ;
 int * first_dir_separator (char const*) ;
 int strlen (char const*) ;
 scalar_t__ strstr (char const*,char*) ;

__attribute__((used)) static void
check_valid_extension_name(const char *extensionname)
{
 int namelen = strlen(extensionname);





 if (namelen == 0)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("invalid extension name: \"%s\"", extensionname),
     errdetail("Extension names must not be empty.")));




 if (strstr(extensionname, "--"))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("invalid extension name: \"%s\"", extensionname),
     errdetail("Extension names must not contain \"--\".")));







 if (extensionname[0] == '-' || extensionname[namelen - 1] == '-')
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("invalid extension name: \"%s\"", extensionname),
     errdetail("Extension names must not begin or end with \"-\".")));





 if (first_dir_separator(extensionname) != ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("invalid extension name: \"%s\"", extensionname),
     errdetail("Extension names must not contain directory separator characters.")));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AssertArg (int ) ;
 int ERRCODE_INVALID_NAME ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 char* first_dir_separator (char const*) ;
 int pkglib_path ;
 char* psprintf (char*,int ,char const*) ;
 char* pstrdup (char const*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static char *
substitute_libpath_macro(const char *name)
{
 const char *sep_ptr;

 AssertArg(name != ((void*)0));


 if (name[0] != '$')
  return pstrdup(name);

 if ((sep_ptr = first_dir_separator(name)) == ((void*)0))
  sep_ptr = name + strlen(name);

 if (strlen("$libdir") != sep_ptr - name ||
  strncmp(name, "$libdir", strlen("$libdir")) != 0)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_NAME),
     errmsg("invalid macro name in dynamic library path: %s",
      name)));

 return psprintf("%s%s", pkglib_path, sep_ptr);
}

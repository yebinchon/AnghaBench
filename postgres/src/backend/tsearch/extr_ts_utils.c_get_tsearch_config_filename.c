
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int MAXPGPATH ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 int get_share_path (int ,char*) ;
 int my_exec_path ;
 char* palloc (int) ;
 int snprintf (char*,int,char*,char*,char const*,char const*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strspn (char const*,char*) ;

char *
get_tsearch_config_filename(const char *basename,
       const char *extension)
{
 char sharepath[MAXPGPATH];
 char *result;
 if (strspn(basename, "abcdefghijklmnopqrstuvwxyz0123456789_") != strlen(basename))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("invalid text search configuration file name \"%s\"",
      basename)));

 get_share_path(my_exec_path, sharepath);
 result = palloc(MAXPGPATH);
 snprintf(result, MAXPGPATH, "%s/tsearch_data/%s.%s",
    sharepath, basename, extension);

 return result;
}

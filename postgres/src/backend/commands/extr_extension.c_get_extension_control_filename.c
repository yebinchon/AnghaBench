
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPGPATH ;
 int get_share_path (int ,char*) ;
 int my_exec_path ;
 scalar_t__ palloc (int) ;
 int snprintf (char*,int,char*,char*,char const*) ;

__attribute__((used)) static char *
get_extension_control_filename(const char *extname)
{
 char sharepath[MAXPGPATH];
 char *result;

 get_share_path(my_exec_path, sharepath);
 result = (char *) palloc(MAXPGPATH);
 snprintf(result, MAXPGPATH, "%s/extension/%s.control",
    sharepath, extname);

 return result;
}

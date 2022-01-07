
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_DIR_SEP (char const) ;
 int MAXPGPATH ;
 int canonicalize_path (char*) ;
 scalar_t__ dir_strcmp (char*,char const*) ;
 int join_path_components (char*,char*,char const*) ;
 int strlcpy (char*,char const*,int ) ;
 int strlen (char const*) ;
 int trim_directory (char*) ;
 int trim_trailing_separator (char*) ;

__attribute__((used)) static void
make_relative_path(char *ret_path, const char *target_path,
       const char *bin_path, const char *my_exec_path)
{
 int prefix_len;
 int tail_start;
 int tail_len;
 int i;





 prefix_len = 0;
 for (i = 0; target_path[i] && bin_path[i]; i++)
 {
  if (IS_DIR_SEP(target_path[i]) && IS_DIR_SEP(bin_path[i]))
   prefix_len = i + 1;
  else if (target_path[i] != bin_path[i])
   break;
 }
 if (prefix_len == 0)
  goto no_match;
 tail_len = strlen(bin_path) - prefix_len;





 strlcpy(ret_path, my_exec_path, MAXPGPATH);
 trim_directory(ret_path);
 canonicalize_path(ret_path);




 tail_start = (int) strlen(ret_path) - tail_len;
 if (tail_start > 0 &&
  IS_DIR_SEP(ret_path[tail_start - 1]) &&
  dir_strcmp(ret_path + tail_start, bin_path + prefix_len) == 0)
 {
  ret_path[tail_start] = '\0';
  trim_trailing_separator(ret_path);
  join_path_components(ret_path, ret_path, target_path + prefix_len);
  canonicalize_path(ret_path);
  return;
 }

no_match:
 strlcpy(ret_path, target_path, MAXPGPATH);
 canonicalize_path(ret_path);
}

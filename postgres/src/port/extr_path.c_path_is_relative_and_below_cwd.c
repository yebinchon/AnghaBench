
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_DIR_SEP (char const) ;
 scalar_t__ is_absolute_path (char const*) ;
 scalar_t__ isalpha (unsigned char) ;
 scalar_t__ path_contains_parent_reference (char const*) ;

bool
path_is_relative_and_below_cwd(const char *path)
{
 if (is_absolute_path(path))
  return 0;

 else if (path_contains_parent_reference(path))
  return 0;
 else
  return 1;
}

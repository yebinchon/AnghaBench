
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char const*,char) ;

const char *vfs_basename( const char *path )
{
  const char *basename;


  if (basename = strrchr( path, '/' )) {
    basename++;
  } else if (basename = strrchr( path, ':' )) {
    basename++;
  } else {
    basename = path;
  }

  return basename;
}

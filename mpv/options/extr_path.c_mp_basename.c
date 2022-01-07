
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char const*,char) ;

char *mp_basename(const char *path)
{
    char *s;
    s = strrchr(path, '/');
    return s ? s + 1 : (char *)path;
}

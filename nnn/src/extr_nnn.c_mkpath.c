
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PATH_MAX ;
 scalar_t__ istopdir (char const*) ;
 size_t xstrlcpy (char*,char const*,scalar_t__) ;

__attribute__((used)) static size_t mkpath(const char *dir, const char *name, char *out)
{
 size_t len;


 if (name[0] == '/')
  return xstrlcpy(out, name, PATH_MAX);


 if (istopdir(dir))
  len = 1;
 else
  len = xstrlcpy(out, dir, PATH_MAX);

 out[len - 1] = '/';
 return (xstrlcpy(out + len, name, PATH_MAX - len) + len);
}

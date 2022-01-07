
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ERANGE ;
 long INT_MAX ;
 long INT_MIN ;
 long LONG_MAX ;
 long LONG_MIN ;
 int errno ;
 long strtol (char const*,char**,int ) ;

__attribute__((used)) static int safe_int(const char *numstr, int *converted)
{
 char *err = ((void*)0);
 long sli;

 errno = 0;
 sli = strtol(numstr, &err, 0);
 if (errno == ERANGE && (sli == LONG_MAX || sli == LONG_MIN))
  return -ERANGE;

 if (errno != 0 && sli == 0)
  return -EINVAL;

 if (err == numstr || *err != '\0')
  return -EINVAL;

 if (sli > INT_MAX || sli < INT_MIN)
  return -ERANGE;

 *converted = (int)sli;
 return 0;
}

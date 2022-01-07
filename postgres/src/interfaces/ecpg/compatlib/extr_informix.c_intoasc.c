
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int interval ;


 char* PGTYPESinterval_to_asc (int *) ;
 int errno ;
 int free (char*) ;
 int memcpy (char*,char*,int ) ;
 int strlen (char*) ;

int
intoasc(interval * i, char *str)
{
 char *tmp;

 errno = 0;
 tmp = PGTYPESinterval_to_asc(i);

 if (!tmp)
  return -errno;

 memcpy(str, tmp, strlen(tmp));
 free(tmp);
 return 0;
}

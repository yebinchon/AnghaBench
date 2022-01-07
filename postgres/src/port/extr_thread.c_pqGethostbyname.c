
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int dummy; } ;


 struct hostent* gethostbyname (char const*) ;
 struct hostent* gethostbyname_r (char const*,struct hostent*,char*,size_t,int*) ;
 int h_errno ;

int
pqGethostbyname(const char *name,
    struct hostent *resultbuf,
    char *buffer, size_t buflen,
    struct hostent **result,
    int *herrno)
{
 *result = gethostbyname(name);

 if (*result != ((void*)0))
  *herrno = h_errno;

 if (*result != ((void*)0))
  return 0;
 else
  return -1;

}

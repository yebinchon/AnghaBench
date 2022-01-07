
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;


 char* getsecs (char const*,int * const) ;

__attribute__((used)) static const char *
getoffset(const char *strp, int32 *const offsetp)
{
 bool neg = 0;

 if (*strp == '-')
 {
  neg = 1;
  ++strp;
 }
 else if (*strp == '+')
  ++strp;
 strp = getsecs(strp, offsetp);
 if (strp == ((void*)0))
  return ((void*)0);
 if (neg)
  *offsetp = -*offsetp;
 return strp;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;



__attribute__((used)) static char *xitoa(uint val)
{
 static char ascbuf[32] = {0};
 int i = 30;

 if (!val)
  return "0";

 for (; val && i; --i, val /= 10)
  ascbuf[i] = '0' + (val % 10);

 return &ascbuf[++i];
}

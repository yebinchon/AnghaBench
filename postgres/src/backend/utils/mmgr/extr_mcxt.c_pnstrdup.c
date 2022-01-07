
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;


 int memcpy (char*,char const*,int) ;
 char* palloc (int) ;
 int strnlen (char const*,int) ;

char *
pnstrdup(const char *in, Size len)
{
 char *out;

 len = strnlen(in, len);

 out = palloc(len + 1);
 memcpy(out, in, len);
 out[len] = '\0';

 return out;
}

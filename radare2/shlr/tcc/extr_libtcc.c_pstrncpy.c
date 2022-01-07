
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,size_t) ;

char *pstrncpy(char *out, const char *in, size_t num)
{
 memcpy (out, in, num);
 out[num] = '\0';
 return out;
}

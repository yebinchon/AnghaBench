
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;


 size_t DER_TAG_LONG ;
 int * der__tag ;
 int snprintf (char*,size_t,char*,size_t) ;
 int strlcpy (char*,int ,size_t) ;

__attribute__((used)) static const char *
der_tag(char *buf, size_t len, uint32_t tag)
{
 if (tag < DER_TAG_LONG)
  strlcpy(buf, der__tag[tag], len);
 else
  snprintf(buf, len, "%#x", tag);
 return buf;
}

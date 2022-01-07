
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Size ;
typedef int MemoryContext ;


 scalar_t__ MemoryContextAlloc (int ,scalar_t__) ;
 int memcpy (char*,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

char *
MemoryContextStrdup(MemoryContext context, const char *string)
{
 char *nstr;
 Size len = strlen(string) + 1;

 nstr = (char *) MemoryContextAlloc(context, len);

 memcpy(nstr, string, len);

 return nstr;
}

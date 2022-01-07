
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CurrentMemoryContext ;
 char* MemoryContextStrdup (int ,char const*) ;

char *
pstrdup(const char *in)
{
 return MemoryContextStrdup(CurrentMemoryContext, in);
}

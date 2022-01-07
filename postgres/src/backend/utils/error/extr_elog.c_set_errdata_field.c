
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MemoryContextData ;


 int Assert (int ) ;
 char* MemoryContextStrdup (int *,char const*) ;

__attribute__((used)) static void
set_errdata_field(MemoryContextData *cxt, char **ptr, const char *str)
{
 Assert(*ptr == ((void*)0));
 *ptr = MemoryContextStrdup(cxt, str);
}

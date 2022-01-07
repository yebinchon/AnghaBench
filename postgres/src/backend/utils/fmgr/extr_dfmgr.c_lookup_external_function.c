
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGFunction ;


 int dlsym (void*,char const*) ;

PGFunction
lookup_external_function(void *filehandle, const char *funcname)
{
 return (PGFunction) dlsym(filehandle, funcname);
}

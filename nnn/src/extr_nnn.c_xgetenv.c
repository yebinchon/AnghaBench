
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char const*) ;

__attribute__((used)) static char *xgetenv(const char *name, char *fallback)
{
 char *value = getenv(name);

 return value && value[0] ? value : fallback;
}

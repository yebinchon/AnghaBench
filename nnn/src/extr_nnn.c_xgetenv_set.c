
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 char* getenv (char const*) ;

__attribute__((used)) static bool xgetenv_set(const char *name)
{
 char *value = getenv(name);

 if (value && value[0] == '1' && !value[1])
  return TRUE;

 return FALSE;
}

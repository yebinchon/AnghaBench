
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNUSED_PARAMETER (char const*) ;
 char* bstrdup (char const*) ;

__attribute__((used)) static bool alloc_default_id(void *data, const char *name, const char *id)
{
 char **p_id = data;
 UNUSED_PARAMETER(name);

 *p_id = bstrdup(id);
 return 0;
}

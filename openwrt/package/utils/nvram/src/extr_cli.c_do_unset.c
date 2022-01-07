
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvram_handle_t ;


 int nvram_unset (int *,char const*) ;

__attribute__((used)) static int do_unset(nvram_handle_t *nvram, const char *var)
{
 return nvram_unset(nvram, var);
}

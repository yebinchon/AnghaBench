
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int virtual_cwd_globals ;


 int realpath_cache_clean () ;

__attribute__((used)) static void cwd_globals_dtor(virtual_cwd_globals *cwd_g)
{
 realpath_cache_clean();
}

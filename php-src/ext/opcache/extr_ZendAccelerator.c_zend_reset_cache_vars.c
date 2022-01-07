
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSMMG ;
typedef int ZCSG ;


 int CG (int ) ;
 int map_ptr_last ;

__attribute__((used)) static void zend_reset_cache_vars(void)
{
 ZSMMG(memory_exhausted) = 0;
 ZCSG(hits) = 0;
 ZCSG(misses) = 0;
 ZCSG(blacklist_misses) = 0;
 ZSMMG(wasted_shared_memory) = 0;
 ZCSG(restart_pending) = 0;
 ZCSG(force_restart_time) = 0;
 ZCSG(map_ptr_last) = CG(map_ptr_last);
}

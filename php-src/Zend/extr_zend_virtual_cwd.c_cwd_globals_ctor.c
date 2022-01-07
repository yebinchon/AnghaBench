
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int realpath_cache; int realpath_cache_ttl; int realpath_cache_size_limit; scalar_t__ realpath_cache_size; int cwd; } ;
typedef TYPE_1__ virtual_cwd_globals ;


 int CWD_STATE_COPY (int *,int *) ;
 int REALPATH_CACHE_SIZE ;
 int REALPATH_CACHE_TTL ;
 int main_cwd_state ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void cwd_globals_ctor(virtual_cwd_globals *cwd_g)
{
 CWD_STATE_COPY(&cwd_g->cwd, &main_cwd_state);
 cwd_g->realpath_cache_size = 0;
 cwd_g->realpath_cache_size_limit = REALPATH_CACHE_SIZE;
 cwd_g->realpath_cache_ttl = REALPATH_CACHE_TTL;
 memset(cwd_g->realpath_cache, 0, sizeof(cwd_g->realpath_cache));
}

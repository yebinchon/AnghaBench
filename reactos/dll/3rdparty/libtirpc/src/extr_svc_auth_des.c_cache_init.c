
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {int dummy; } ;


 int AUTHDES_CACHESZ ;
 struct cache_entry* authdes_cache ;
 int* authdes_lru ;
 int bzero (char*,int) ;
 scalar_t__ mem_alloc (int) ;

__attribute__((used)) static void
cache_init()
{
 int i;

 authdes_cache = (struct cache_entry *)
  mem_alloc(sizeof(struct cache_entry) * AUTHDES_CACHESZ);
 bzero((char *)authdes_cache,
  sizeof(struct cache_entry) * AUTHDES_CACHESZ);

 authdes_lru = (short *)mem_alloc(sizeof(short) * AUTHDES_CACHESZ);



 for (i = 0; i < AUTHDES_CACHESZ; i++) {
  authdes_lru[i] = i;
 }
}

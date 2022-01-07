
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {struct pool* next; struct pool* mem; } ;


 int free (struct pool*) ;
 struct pool* pool_head ;

void names_free(void)
{
 struct pool *pool;

 if (!pool_head)
  return;

 for (pool = pool_head; pool != ((void*)0); ) {
  struct pool *tmp;

  if (pool->mem)
   free(pool->mem);

  tmp = pool;
  pool = pool->next;
  free(tmp);
 }
}

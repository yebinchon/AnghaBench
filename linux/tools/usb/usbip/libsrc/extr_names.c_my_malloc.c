
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {void* mem; struct pool* next; } ;


 void* calloc (int,size_t) ;
 int free (struct pool*) ;
 struct pool* pool_head ;

__attribute__((used)) static void *my_malloc(size_t size)
{
 struct pool *p;

 p = calloc(1, sizeof(struct pool));
 if (!p)
  return ((void*)0);

 p->mem = calloc(1, size);
 if (!p->mem) {
  free(p);
  return ((void*)0);
 }

 p->next = pool_head;
 pool_head = p;

 return p->mem;
}

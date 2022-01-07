
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_ring {int queue; } ;


 int kvfree (int ) ;
 void* ptr_ring_consume (struct ptr_ring*) ;

__attribute__((used)) static inline void ptr_ring_cleanup(struct ptr_ring *r, void (*destroy)(void *))
{
 void *ptr;

 if (destroy)
  while ((ptr = ptr_ring_consume(r)))
   destroy(ptr);
 kvfree(r->queue);
}

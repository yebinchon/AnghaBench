
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slabinfo {int objects; int object_size; } ;


 unsigned long slab_size (struct slabinfo*) ;

__attribute__((used)) static unsigned long slab_waste(struct slabinfo *s)
{
 return slab_size(s) - s->objects * s->object_size;
}

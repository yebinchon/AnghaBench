
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t avail; void* firstfree; int * buildCxt; } ;
typedef TYPE_1__ IspellDict ;


 int Assert (int ) ;
 size_t COMPACT_ALLOC_CHUNK ;
 size_t COMPACT_MAX_REQ ;
 size_t MAXALIGN (size_t) ;
 void* palloc0 (size_t) ;

__attribute__((used)) static void *
compact_palloc0(IspellDict *Conf, size_t size)
{
 void *result;


 Assert(Conf->buildCxt != ((void*)0));


 if (size > COMPACT_MAX_REQ)
  return palloc0(size);


 size = MAXALIGN(size);


 if (size > Conf->avail)
 {
  Conf->firstfree = palloc0(COMPACT_ALLOC_CHUNK);
  Conf->avail = COMPACT_ALLOC_CHUNK;
 }

 result = (void *) Conf->firstfree;
 Conf->firstfree += size;
 Conf->avail -= size;

 return result;
}

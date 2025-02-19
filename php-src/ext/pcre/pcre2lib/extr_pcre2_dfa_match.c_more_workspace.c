
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int memory_data; TYPE_3__* (* malloc ) (int,int ) ;} ;
struct TYPE_8__ {scalar_t__ heap_used; scalar_t__ heap_limit; TYPE_1__ memctl; } ;
typedef TYPE_2__ dfa_match_block ;
struct TYPE_9__ {int size; int free; struct TYPE_9__* next; } ;
typedef TYPE_3__ RWS_anchor ;


 int PCRE2_ERROR_HEAPLIMIT ;
 int PCRE2_ERROR_NOMEMORY ;
 unsigned int RWS_ANCHOR_SIZE ;
 unsigned int RWS_RSIZE ;
 int UINT32_MAX ;
 TYPE_3__* stub1 (int,int ) ;

__attribute__((used)) static int
more_workspace(RWS_anchor **rwsptr, unsigned int ovecsize, dfa_match_block *mb)
{
RWS_anchor *rws = *rwsptr;
RWS_anchor *new;

if (rws->next != ((void*)0))
  {
  new = rws->next;
  }





else
  {
  uint32_t newsize = (rws->size >= UINT32_MAX/2)? UINT32_MAX/2 : rws->size * 2;
  uint32_t newsizeK = newsize/(1024/sizeof(int));

  if (newsizeK + mb->heap_used > mb->heap_limit)
    newsizeK = (uint32_t)(mb->heap_limit - mb->heap_used);
  newsize = newsizeK*(1024/sizeof(int));

  if (newsize < RWS_RSIZE + ovecsize + RWS_ANCHOR_SIZE)
    return PCRE2_ERROR_HEAPLIMIT;
  new = mb->memctl.malloc(newsize*sizeof(int), mb->memctl.memory_data);
  if (new == ((void*)0)) return PCRE2_ERROR_NOMEMORY;
  mb->heap_used += newsizeK;
  new->next = ((void*)0);
  new->size = newsize;
  rws->next = new;
  }

new->free = new->size - RWS_ANCHOR_SIZE;
*rwsptr = new;
return 0;
}

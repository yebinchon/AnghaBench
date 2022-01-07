
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stack; scalar_t__ visited; } ;
typedef TYPE_1__ zend_worklist ;
typedef int zend_ulong ;
typedef scalar_t__ zend_bitset ;
typedef int zend_arena ;


 int ZEND_ASSERT (int) ;
 scalar_t__ zend_arena_calloc (int **,int,int ) ;
 int zend_bitset_len (int) ;
 int zend_worklist_stack_prepare (int **,int *,int) ;

__attribute__((used)) static inline int zend_worklist_prepare(zend_arena **arena, zend_worklist *worklist, int len)
{
 ZEND_ASSERT(len >= 0);
 worklist->visited = (zend_bitset)zend_arena_calloc(arena, sizeof(zend_ulong), zend_bitset_len(len));
 return zend_worklist_stack_prepare(arena, &worklist->stack, len);
}

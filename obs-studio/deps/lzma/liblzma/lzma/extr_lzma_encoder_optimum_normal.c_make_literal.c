
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prev_1_is_literal; int back_prev; } ;
typedef TYPE_1__ lzma_optimal ;


 int UINT32_MAX ;

__attribute__((used)) static inline void
make_literal(lzma_optimal *optimal)
{
 optimal->back_prev = UINT32_MAX;
 optimal->prev_1_is_literal = 0;
}

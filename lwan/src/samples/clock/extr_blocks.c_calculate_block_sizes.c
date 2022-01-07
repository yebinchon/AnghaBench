
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fall {scalar_t__ shape; } ;


 scalar_t__ SHAPE_MAX ;
 int* block_sizes ;
 struct fall const** fall ;

__attribute__((constructor)) void calculate_block_sizes(void)
{
    for (int i = 0; i < 10; i++) {
        const struct fall *instr = fall[i];

        while (instr->shape != SHAPE_MAX)
            instr++;

        block_sizes[i] = (int)(instr - fall[i]) + 1;
    }
}

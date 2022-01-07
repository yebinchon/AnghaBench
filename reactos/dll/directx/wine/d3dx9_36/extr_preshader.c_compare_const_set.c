
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_const_param_eval_output {scalar_t__ table; int register_index; } ;



__attribute__((used)) static int compare_const_set(const void *a, const void *b)
{
    const struct d3dx_const_param_eval_output *r1 = a;
    const struct d3dx_const_param_eval_output *r2 = b;

    if (r1->table != r2->table)
        return r1->table - r2->table;
    return r1->register_index - r2->register_index;
}

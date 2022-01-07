
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_elts; } ;
struct sparse_array {TYPE_1__ elements; } ;



unsigned sparse_array_length(const struct sparse_array* sa)
{
    return sa->elements.num_elts;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector {int num_elts; } ;



unsigned vector_length(const struct vector* v)
{
    return v->num_elts;
}

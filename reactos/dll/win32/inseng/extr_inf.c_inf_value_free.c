
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf_value {int dummy; } ;


 int heap_free (struct inf_value*) ;

__attribute__((used)) static void inf_value_free(struct inf_value *value)
{
    heap_free(value);
}

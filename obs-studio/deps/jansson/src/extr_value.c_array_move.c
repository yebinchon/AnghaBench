
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_3__ {int * table; } ;
typedef TYPE_1__ json_array_t ;


 int memmove (int *,int *,size_t) ;

__attribute__((used)) static void array_move(json_array_t *array, size_t dest,
                       size_t src, size_t count)
{
    memmove(&array->table[dest], &array->table[src], count * sizeof(json_t *));
}

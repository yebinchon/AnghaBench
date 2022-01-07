
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_array {int dummy; } ;


 int free (struct lwan_array*) ;
 int lwan_array_reset (struct lwan_array*,int *) ;

__attribute__((used)) static void coro_lwan_array_free_heap(void *data)
{
    struct lwan_array *array = data;

    lwan_array_reset(array, ((void*)0));
    free(array);
}

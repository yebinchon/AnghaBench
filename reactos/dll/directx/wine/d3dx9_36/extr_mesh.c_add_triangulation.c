
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct triangulation_array {scalar_t__ count; struct triangulation* items; } ;
struct triangulation {int dummy; } ;
struct dynamic_array {int dummy; } ;


 int ZeroMemory (struct triangulation*,int) ;
 int reserve (struct dynamic_array*,scalar_t__,int) ;

__attribute__((used)) static struct triangulation *add_triangulation(struct triangulation_array *array)
{
    struct triangulation *item;

    if (!reserve((struct dynamic_array *)array, array->count + 1, sizeof(array->items[0])))
        return ((void*)0);

    item = &array->items[array->count++];
    ZeroMemory(item, sizeof(*item));
    return item;
}

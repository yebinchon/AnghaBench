
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct point2d {int dummy; } ;
struct outline {int count; struct point2d* items; } ;
struct dynamic_array {int dummy; } ;


 int reserve (struct dynamic_array*,int,int) ;

__attribute__((used)) static struct point2d *add_points(struct outline *array, int num)
{
    struct point2d *item;

    if (!reserve((struct dynamic_array *)array, array->count + num, sizeof(array->items[0])))
        return ((void*)0);

    item = &array->items[array->count];
    array->count += num;
    return item;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct triangulation_array {size_t count; int * items; } ;
struct TYPE_2__ {int items; } ;
struct triangulation {TYPE_1__ vertex_stack; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;
 int MoveMemory (struct triangulation*,struct triangulation*,int) ;

__attribute__((used)) static void remove_triangulation(struct triangulation_array *array, struct triangulation *item)
{
    HeapFree(GetProcessHeap(), 0, item->vertex_stack.items);
    MoveMemory(item, item + 1, (char*)&array->items[array->count] - (char*)(item + 1));
    array->count--;
}

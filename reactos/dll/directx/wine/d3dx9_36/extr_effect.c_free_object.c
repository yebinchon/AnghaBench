
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_object {int data; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;

__attribute__((used)) static void free_object(struct d3dx_object *object)
{
    HeapFree(GetProcessHeap(), 0, object->data);
}

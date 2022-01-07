
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dynamic_array {int capacity; void* items; } ;
typedef int BOOL ;


 int FALSE ;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 void* HeapReAlloc (int ,int ,void*,int) ;
 int TRUE ;
 int max (int,int) ;

__attribute__((used)) static BOOL reserve(struct dynamic_array *array, int count, int itemsize)
{
    if (count > array->capacity) {
        void *new_buffer;
        int new_capacity;
        if (array->items && array->capacity) {
            new_capacity = max(array->capacity * 2, count);
            new_buffer = HeapReAlloc(GetProcessHeap(), 0, array->items, new_capacity * itemsize);
        } else {
            new_capacity = max(16, count);
            new_buffer = HeapAlloc(GetProcessHeap(), 0, new_capacity * itemsize);
        }
        if (!new_buffer)
            return FALSE;
        array->items = new_buffer;
        array->capacity = new_capacity;
    }
    return TRUE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIZE_T ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 void* heap_realloc (void*,int) ;
 int max (int,int) ;

BOOL d3drm_array_reserve(void **elements, SIZE_T *capacity, SIZE_T element_count, SIZE_T element_size)
{
    SIZE_T new_capacity, max_capacity;
    void *new_elements;

    if (element_count <= *capacity)
        return TRUE;

    max_capacity = ~(SIZE_T)0 / element_size;
    if (max_capacity < element_count)
        return FALSE;

    new_capacity = max(*capacity, 4);
    while (new_capacity < element_count && new_capacity <= max_capacity / 2)
        new_capacity *= 2;

    if (new_capacity < element_count)
        new_capacity = max_capacity;

    if (!(new_elements = heap_realloc(*elements, new_capacity * element_size)))
        return FALSE;

    *elements = new_elements;
    *capacity = new_capacity;
    return TRUE;
}

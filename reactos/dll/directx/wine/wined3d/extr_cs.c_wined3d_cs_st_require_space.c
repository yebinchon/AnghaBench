
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_cs {int data_size; size_t end; size_t start; void* data; } ;
typedef enum wined3d_cs_queue_id { ____Placeholder_wined3d_cs_queue_id } wined3d_cs_queue_id ;
typedef void BYTE ;


 void* heap_alloc (size_t) ;
 void* heap_realloc (void*,size_t) ;
 size_t max (size_t,int) ;

__attribute__((used)) static void *wined3d_cs_st_require_space(struct wined3d_cs *cs, size_t size, enum wined3d_cs_queue_id queue_id)
{
    if (size > (cs->data_size - cs->end))
    {
        size_t new_size;
        void *new_data;

        new_size = max(size, cs->data_size * 2);
        if (!cs->end)
            new_data = heap_realloc(cs->data, new_size);
        else
            new_data = heap_alloc(new_size);
        if (!new_data)
            return ((void*)0);

        cs->data_size = new_size;
        cs->start = cs->end = 0;
        cs->data = new_data;
    }

    cs->end += size;

    return (BYTE *)cs->data + cs->start;
}

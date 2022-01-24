#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wined3d_cs {int data_size; size_t end; size_t start; void* data; } ;
typedef  enum wined3d_cs_queue_id { ____Placeholder_wined3d_cs_queue_id } wined3d_cs_queue_id ;
typedef  void BYTE ;

/* Variables and functions */
 void* FUNC0 (size_t) ; 
 void* FUNC1 (void*,size_t) ; 
 size_t FUNC2 (size_t,int) ; 

__attribute__((used)) static void *FUNC3(struct wined3d_cs *cs, size_t size, enum wined3d_cs_queue_id queue_id)
{
    if (size > (cs->data_size - cs->end))
    {
        size_t new_size;
        void *new_data;

        new_size = FUNC2(size, cs->data_size * 2);
        if (!cs->end)
            new_data = FUNC1(cs->data, new_size);
        else
            new_data = FUNC0(new_size);
        if (!new_data)
            return NULL;

        cs->data_size = new_size;
        cs->start = cs->end = 0;
        cs->data = new_data;
    }

    cs->end += size;

    return (BYTE *)cs->data + cs->start;
}
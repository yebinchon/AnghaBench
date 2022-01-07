
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int sei_t ;


 int * malloc (size_t) ;
 size_t sei_render (int *,int *) ;
 size_t sei_render_size (int *) ;

uint8_t* sei_render_alloc(sei_t* sei, size_t* size)
{
    size_t aloc = sei_render_size(sei);
    uint8_t* data = malloc(aloc);
    (*size) = sei_render(sei, data);
    return data;
}

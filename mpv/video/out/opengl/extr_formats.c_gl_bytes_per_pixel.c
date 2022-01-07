
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLenum ;






 int gl_component_size (int) ;
 int gl_format_components (int) ;

int gl_bytes_per_pixel(GLenum format, GLenum type)
{

    switch (type) {
    case 131: return 4;
    case 130: return 2;
    case 129: return 2;
    case 128: return 2;
    }

    return gl_component_size(type) * gl_format_components(format);
}

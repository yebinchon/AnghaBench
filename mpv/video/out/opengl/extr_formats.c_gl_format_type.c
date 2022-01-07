
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_format {scalar_t__ type; int format; } ;


 scalar_t__ GL_FLOAT ;
 int MPGL_TYPE_FLOAT ;
 int MPGL_TYPE_UINT ;
 int MPGL_TYPE_UNORM ;
 scalar_t__ gl_integer_format_to_base (int ) ;

int gl_format_type(const struct gl_format *format)
{
    if (!format)
        return 0;
    if (format->type == GL_FLOAT)
        return MPGL_TYPE_FLOAT;
    if (gl_integer_format_to_base(format->format))
        return MPGL_TYPE_UINT;
    return MPGL_TYPE_UNORM;
}

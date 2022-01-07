
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_format {struct gl_format* priv; } ;
struct gl_format {int type; int format; int internal_format; } ;
typedef int GLint ;
typedef int GLenum ;



void ra_gl_get_format(const struct ra_format *fmt, GLint *out_internal_format,
                      GLenum *out_format, GLenum *out_type)
{
    const struct gl_format *gl_format = fmt->priv;
    *out_internal_format = gl_format->internal_format;
    *out_format = gl_format->format;
    *out_type = gl_format->type;
}

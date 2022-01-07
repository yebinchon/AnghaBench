
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int context; int display; } ;
struct mp_filter {struct priv* priv; } ;
typedef int VAStatus ;
typedef int VABufferID ;


 scalar_t__ CHECK_VA_STATUS (struct mp_filter*,char*) ;
 int VAProcFilterParameterBufferType ;
 int VA_INVALID_ID ;
 int vaCreateBuffer (int ,int ,int ,int,int,void*,int *) ;

__attribute__((used)) static VABufferID va_create_filter_buffer(struct mp_filter *vf, int bytes,
                                          int num, void *data)
{
    struct priv *p = vf->priv;
    VABufferID buffer;
    VAStatus status = vaCreateBuffer(p->display, p->context,
                                     VAProcFilterParameterBufferType,
                                     bytes, num, data, &buffer);
    return CHECK_VA_STATUS(vf, "vaCreateBuffer()") ? buffer : VA_INVALID_ID;
}

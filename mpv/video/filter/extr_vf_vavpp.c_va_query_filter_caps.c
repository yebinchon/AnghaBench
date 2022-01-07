
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int context; int display; } ;
struct mp_filter {struct priv* priv; } ;
typedef int VAStatus ;
typedef int VAProcFilterType ;


 scalar_t__ CHECK_VA_STATUS (struct mp_filter*,char*) ;
 int vaQueryVideoProcFilterCaps (int ,int ,int ,void*,unsigned int*) ;

__attribute__((used)) static int va_query_filter_caps(struct mp_filter *vf, VAProcFilterType type,
                                void *caps, unsigned int count)
{
    struct priv *p = vf->priv;
    VAStatus status = vaQueryVideoProcFilterCaps(p->display, p->context, type,
                                                 caps, &count);
    return CHECK_VA_STATUS(vf, "vaQueryVideoProcFilterCaps()") ? count : 0;
}

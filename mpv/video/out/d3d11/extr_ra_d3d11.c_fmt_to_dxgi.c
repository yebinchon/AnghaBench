
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_format {struct d3d_fmt* priv; } ;
struct d3d_fmt {int fmt; } ;
typedef int DXGI_FORMAT ;



__attribute__((used)) static DXGI_FORMAT fmt_to_dxgi(const struct ra_format *fmt)
{
    struct d3d_fmt *d3d = fmt->priv;
    return d3d->fmt;
}

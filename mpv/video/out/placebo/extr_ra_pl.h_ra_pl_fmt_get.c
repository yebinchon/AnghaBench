
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_format {struct pl_fmt const* priv; } ;
struct pl_fmt {int dummy; } ;



__attribute__((used)) static inline const struct pl_fmt *ra_pl_fmt_get(const struct ra_format *format)
{
    return format->priv;
}

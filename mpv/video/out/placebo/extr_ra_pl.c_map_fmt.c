
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_format {struct pl_fmt const* priv; } ;
struct ra {int num_formats; struct ra_format** formats; } ;
struct pl_fmt {int name; } ;


 int MP_ERR (struct ra*,char*,int ) ;

__attribute__((used)) static struct ra_format *map_fmt(struct ra *ra, const struct pl_fmt *plfmt)
{
    for (int i = 0; i < ra->num_formats; i++) {
        if (ra->formats[i]->priv == plfmt)
            return ra->formats[i];
    }

    MP_ERR(ra, "Failed mapping pl_fmt '%s' to ra_fmt?\n", plfmt->name);
    return ((void*)0);
}

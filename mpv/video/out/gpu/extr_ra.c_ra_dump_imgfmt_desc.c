
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_imgfmt_desc {int num_planes; size_t** components; int component_pad; int component_bits; int chroma_h; int chroma_w; TYPE_1__** planes; } ;
struct ra {int dummy; } ;
typedef int pl ;
typedef int pf ;
struct TYPE_2__ {char* name; } ;


 int MP_MSG (struct ra*,int,char*,int,int ,int ,int ,int ,char*,char*) ;
 int mp_snprintf_cat (char*,int,char*,...) ;

void ra_dump_imgfmt_desc(struct ra *ra, const struct ra_imgfmt_desc *desc,
                         int msgl)
{
    char pl[80] = "";
    char pf[80] = "";
    for (int n = 0; n < desc->num_planes; n++) {
        if (n > 0) {
            mp_snprintf_cat(pl, sizeof(pl), "/");
            mp_snprintf_cat(pf, sizeof(pf), "/");
        }
        char t[5] = {0};
        for (int i = 0; i < 4; i++)
            t[i] = "_rgba"[desc->components[n][i]];
        for (int i = 3; i > 0 && t[i] == '_'; i--)
            t[i] = '\0';
        mp_snprintf_cat(pl, sizeof(pl), "%s", t);
        mp_snprintf_cat(pf, sizeof(pf), "%s", desc->planes[n]->name);
    }
    MP_MSG(ra, msgl, "%d planes %dx%d %d/%d [%s] (%s)\n",
           desc->num_planes, desc->chroma_w, desc->chroma_h,
           desc->component_bits, desc->component_pad, pf, pl);
}

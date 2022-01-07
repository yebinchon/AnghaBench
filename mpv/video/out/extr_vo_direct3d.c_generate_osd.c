
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sub_bitmaps {scalar_t__ num_parts; size_t format; size_t render_index; scalar_t__ change_id; } ;
struct osdpart {scalar_t__ change_id; scalar_t__ num_vertices; } ;
struct TYPE_4__ {struct osdpart** osd; int * osd_fmt_table; } ;
typedef TYPE_1__ d3d_priv ;


 int upload_osd (TYPE_1__*,struct osdpart*,struct sub_bitmaps*) ;

__attribute__((used)) static struct osdpart *generate_osd(d3d_priv *priv, struct sub_bitmaps *imgs)
{
    if (imgs->num_parts == 0 || !priv->osd_fmt_table[imgs->format])
        return ((void*)0);

    struct osdpart *osd = priv->osd[imgs->render_index];

    if (imgs->change_id != osd->change_id)
        upload_osd(priv, osd, imgs);

    return osd->num_vertices ? osd : ((void*)0);
}

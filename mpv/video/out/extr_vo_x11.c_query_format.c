
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct priv* priv; } ;
struct priv {int sws; } ;


 int IMGFMT_RGB0 ;
 scalar_t__ mp_sws_supports_formats (int ,int ,int) ;

__attribute__((used)) static int query_format(struct vo *vo, int format)
{
    struct priv *p = vo->priv;
    if (mp_sws_supports_formats(p->sws, IMGFMT_RGB0, format))
        return 1;
    return 0;
}

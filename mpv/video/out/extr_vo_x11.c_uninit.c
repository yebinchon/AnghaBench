
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo {TYPE_1__* x11; struct priv* priv; } ;
struct priv {int original_image; scalar_t__ gc; scalar_t__* myximage; } ;
struct TYPE_2__ {int display; } ;


 int XFreeGC (int ,scalar_t__) ;
 int freeMyXImage (struct priv*,int) ;
 int talloc_free (int ) ;
 int vo_x11_uninit (struct vo*) ;

__attribute__((used)) static void uninit(struct vo *vo)
{
    struct priv *p = vo->priv;
    if (p->myximage[0])
        freeMyXImage(p, 0);
    if (p->myximage[1])
        freeMyXImage(p, 1);
    if (p->gc)
        XFreeGC(vo->x11->display, p->gc);

    talloc_free(p->original_image);

    vo_x11_uninit(vo);
}

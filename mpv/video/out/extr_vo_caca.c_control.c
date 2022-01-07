
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vo {struct priv* priv; } ;
struct priv {int display; } ;




 int VO_NOTIMPL ;
 int VO_TRUE ;
 int caca_set_display_title (int ,char*) ;
 int check_events (struct vo*) ;

__attribute__((used)) static int control(struct vo *vo, uint32_t request, void *data)
{
    struct priv *priv = vo->priv;
    switch (request) {
    case 129:
        check_events(vo);
        return VO_TRUE;
    case 128:
        caca_set_display_title(priv->display, (char *)data);
        return VO_TRUE;
    }
    return VO_NOTIMPL;
}

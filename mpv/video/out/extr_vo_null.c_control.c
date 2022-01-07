
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vo {struct priv* priv; } ;
struct priv {double cfg_fps; } ;



 int VO_NOTIMPL ;
 int VO_TRUE ;

__attribute__((used)) static int control(struct vo *vo, uint32_t request, void *data)
{
    struct priv *p = vo->priv;
    switch (request) {
    case 128:
        if (!p->cfg_fps)
            break;
        *(double *)data = p->cfg_fps;
        return VO_TRUE;
    }
    return VO_NOTIMPL;
}

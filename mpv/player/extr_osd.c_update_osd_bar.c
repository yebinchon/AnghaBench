
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; float value; } ;
struct MPContext {TYPE_1__ osd_progbar; int osd; } ;


 int osd_set_progbar (int ,TYPE_1__*) ;

__attribute__((used)) static void update_osd_bar(struct MPContext *mpctx, int type,
                           double min, double max, double val)
{
    if (mpctx->osd_progbar.type != type)
        return;

    float new_value = (val - min) / (max - min);
    if (new_value != mpctx->osd_progbar.value) {
        mpctx->osd_progbar.value = new_value;
        osd_set_progbar(mpctx->osd, &mpctx->osd_progbar);
    }
}

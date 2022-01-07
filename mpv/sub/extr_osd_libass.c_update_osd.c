
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_state {int dummy; } ;
struct osd_object {int osd_changed; int ass; } ;


 int clear_ass (int *) ;
 int update_osd_text (struct osd_state*,struct osd_object*) ;
 int update_progbar (struct osd_state*,struct osd_object*) ;

__attribute__((used)) static void update_osd(struct osd_state *osd, struct osd_object *obj)
{
    obj->osd_changed = 0;
    clear_ass(&obj->ass);
    update_osd_text(osd, obj);
    update_progbar(osd, obj);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct osd_state {int dummy; } ;
struct TYPE_2__ {int track; } ;
struct osd_object {int * text; TYPE_1__ ass; } ;


 int add_osd_ass_event_escaped (int ,char*,int *) ;
 int prepare_osd_ass (struct osd_state*,struct osd_object*) ;

__attribute__((used)) static void update_osd_text(struct osd_state *osd, struct osd_object *obj)
{

    if (!obj->text[0])
        return;

    prepare_osd_ass(osd, obj);
    add_osd_ass_event_escaped(obj->ass.track, "OSD", obj->text);
}

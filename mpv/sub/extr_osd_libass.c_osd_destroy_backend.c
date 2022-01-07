
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_state {struct osd_object** objs; } ;
struct osd_object {int num_externals; int * externals; int ass; } ;


 int MAX_OSD_PARTS ;
 int destroy_ass_renderer (int *) ;
 int destroy_external (int *) ;

void osd_destroy_backend(struct osd_state *osd)
{
    for (int n = 0; n < MAX_OSD_PARTS; n++) {
        struct osd_object *obj = osd->objs[n];
        destroy_ass_renderer(&obj->ass);
        for (int i = 0; i < obj->num_externals; i++)
            destroy_external(&obj->externals[i]);
        obj->num_externals = 0;
    }
}

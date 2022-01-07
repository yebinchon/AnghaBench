
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct NmapServiceProbeList {struct NmapServiceProbeList* list; scalar_t__ count; } ;


 int free (struct NmapServiceProbeList*) ;
 int nmapserviceprobes_free_record (struct NmapServiceProbeList) ;

void
nmapserviceprobes_free(struct NmapServiceProbeList *list)
{
    unsigned i;

    if (list == ((void*)0))
        return;

    for (i=0; list->count; i++) {
        nmapserviceprobes_free_record(list->list[i]);
    }

    if (list->list)
        free(list->list);
    free(list);
}

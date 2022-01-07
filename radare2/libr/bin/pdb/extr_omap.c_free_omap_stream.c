
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int omap_entries; } ;
typedef TYPE_1__ SOmapStream ;
typedef int SOmapEntry ;
typedef int RListIter ;


 int free (int *) ;
 int r_list_free (int ) ;
 scalar_t__ r_list_iter_get (int *) ;
 scalar_t__ r_list_iter_next (int *) ;
 int * r_list_iterator (int ) ;

void free_omap_stream(void *stream) {
 SOmapStream *omap_stream = (SOmapStream *) stream;
 SOmapEntry *omap_entry = ((void*)0);
 RListIter *it = r_list_iterator (omap_stream->omap_entries);
 while (r_list_iter_next (it)) {
  omap_entry = (SOmapEntry *) r_list_iter_get (it);
  free (omap_entry);
 }
 r_list_free (omap_stream->omap_entries);
}

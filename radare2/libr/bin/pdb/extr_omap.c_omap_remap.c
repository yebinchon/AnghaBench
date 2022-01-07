
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int from; scalar_t__ to; } ;
struct TYPE_3__ {unsigned int* froms; int omap_entries; } ;
typedef TYPE_1__ SOmapStream ;
typedef TYPE_2__ SOmapEntry ;
typedef int RListIter ;


 int binary_search (unsigned int*,int,int ,int) ;
 scalar_t__ malloc (int) ;
 scalar_t__ r_list_get_n (int ,int) ;
 scalar_t__ r_list_iter_get (int *) ;
 scalar_t__ r_list_iter_next (int *) ;
 int * r_list_iterator (int ) ;
 int r_list_length (int ) ;

int omap_remap(void *stream, int address) {
 SOmapStream *omap_stream = (SOmapStream *) stream;
 SOmapEntry *omap_entry = 0;
 RListIter *it = 0;
 int i = 0;
 int pos = 0;
 int len = 0;

 if (!omap_stream) {
  return address;
 }

 len = r_list_length (omap_stream->omap_entries);

 if (omap_stream->froms == 0) {
  omap_stream->froms = (unsigned int *) malloc (4 * len);
  if (!omap_stream->froms) {
   return -1;
  }
  it = r_list_iterator (omap_stream->omap_entries);
  while (r_list_iter_next (it)) {
   omap_entry = (SOmapEntry *) r_list_iter_get (it);
   omap_stream->froms[i] = omap_entry->from;
   i++;
  }
 }


 pos = binary_search (omap_stream->froms, address, 0, (len));

 if (pos == -1) {
  return -1;
 }

 if (omap_stream->froms[pos] != address) {
  pos -= 1;
 }
 omap_entry = (SOmapEntry *) r_list_get_n (omap_stream->omap_entries, pos);
 if (!omap_entry) {
  return -1;
 }
 if (omap_entry->to == 0) {
  return omap_entry->to;
 }
 return omap_entry->to + (address - omap_entry->from);
}

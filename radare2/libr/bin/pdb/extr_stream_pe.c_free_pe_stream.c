
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sections_hdrs; } ;
typedef TYPE_1__ SPEStream ;
typedef int SIMAGE_SECTION_HEADER ;
typedef int RListIter ;


 int free (int *) ;
 int r_list_free (int ) ;
 scalar_t__ r_list_iter_get (int *) ;
 scalar_t__ r_list_iter_next (int *) ;
 int * r_list_iterator (int ) ;

void free_pe_stream(void *stream)
{
 SPEStream *pe_stream = (SPEStream *) stream;
 SIMAGE_SECTION_HEADER *sctn_header = 0;
 RListIter *it = 0;

 it = r_list_iterator (pe_stream->sections_hdrs);
 while (r_list_iter_next (it)) {
  sctn_header = (SIMAGE_SECTION_HEADER *) r_list_iter_get (it);
  free (sctn_header);
 }
 r_list_free (pe_stream->sections_hdrs);
}

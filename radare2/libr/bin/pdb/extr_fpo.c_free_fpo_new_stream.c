
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fpo_data_list; } ;
typedef int SFPO_DATA_V2 ;
typedef TYPE_1__ SFPONewStream ;
typedef int RListIter ;


 int free (int *) ;
 int r_list_free (int ) ;
 scalar_t__ r_list_iter_get (int *) ;
 scalar_t__ r_list_iter_next (int *) ;
 int * r_list_iterator (int ) ;

void free_fpo_new_stream(void *stream)
{
 SFPONewStream *fpo_stream = (SFPONewStream *) stream;
 RListIter *it = 0;
 SFPO_DATA_V2 *fpo_data = 0;

 it = r_list_iterator(fpo_stream->fpo_data_list);
 while (r_list_iter_next(it)) {
  fpo_data = (SFPO_DATA_V2 *) r_list_iter_get(it);
  free(fpo_data);
 }
 r_list_free (fpo_stream->fpo_data_list);
}

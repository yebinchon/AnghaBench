
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int file_count; } ;
typedef int RList ;
typedef int RBuffer ;
typedef TYPE_1__ RBinXtrData ;
typedef int RBin ;


 TYPE_1__* oneshot_buffer (int *,int *,int) ;
 int r_bin_xtrdata_free (TYPE_1__*) ;
 int r_list_append (int *,TYPE_1__*) ;
 int * r_list_newf (int (*) (TYPE_1__*)) ;

__attribute__((used)) static RList * oneshotall_buffer(RBin *bin, RBuffer *b) {
 RBinXtrData *data = oneshot_buffer (bin, b, 0);
 if (data) {

  int narch = data->file_count;
  RList *res = r_list_newf (r_bin_xtrdata_free);
  if (!res) {
   r_bin_xtrdata_free (data);
   return ((void*)0);
  }
  r_list_append (res, data);
  int i = 0;
  for (i = 1; data && i < narch; i++) {
   data = oneshot_buffer (bin, b, i);
   r_list_append (res, data);
  }
  return res;
 }
 return ((void*)0);
}

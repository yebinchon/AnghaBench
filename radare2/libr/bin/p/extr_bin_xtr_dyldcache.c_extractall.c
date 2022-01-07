
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int file_count; } ;
typedef int RList ;
typedef TYPE_1__ RBinXtrData ;
typedef int RBin ;


 TYPE_1__* extract (int *,int) ;
 int r_bin_xtrdata_free (TYPE_1__*) ;
 int r_list_append (int *,TYPE_1__*) ;
 int * r_list_newf (int (*) (TYPE_1__*)) ;

__attribute__((used)) static RList * extractall(RBin *bin) {
 RList *result = ((void*)0);
 int nlib, i = 0;
 RBinXtrData *data = extract (bin, i);
 if (!data) {
  return result;
 }

 nlib = data->file_count;
 result = r_list_newf (r_bin_xtrdata_free);
 if (!result) {
  r_bin_xtrdata_free (data);
  return ((void*)0);
 }
 r_list_append (result, data);
 for (i = 1; data && i < nlib; i++) {
  data = extract (bin, i);
  r_list_append (result, data);
 }
 return result;
}

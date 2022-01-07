
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_11__ {int file; } ;
struct TYPE_10__ {int file_count; } ;
typedef int RList ;
typedef TYPE_1__ RBinXtrData ;
typedef TYPE_2__ RBin ;


 int load (TYPE_2__*) ;
 TYPE_1__* oneshot (TYPE_2__*,int const*,int ,int) ;
 int r_bin_xtrdata_free (TYPE_1__*) ;
 int r_list_append (int *,TYPE_1__*) ;
 int * r_list_newf (int (*) (TYPE_1__*)) ;

__attribute__((used)) static RList * oneshotall(RBin *bin, const ut8* buf, ut64 size) {
 RBinXtrData *data = ((void*)0);
 RList *res = ((void*)0);
 int nlib, i = 0;
 if (!bin->file) {
  if (!load (bin)) {
   return ((void*)0);
  }
 }
 data = oneshot (bin, buf, size, i);
 if (!data) {
  return res;
 }

 nlib = data->file_count;
 res = r_list_newf (r_bin_xtrdata_free);
 if (!res) {
  r_bin_xtrdata_free (data);
  return ((void*)0);
 }
 r_list_append (res, data);
 for (i = 1; data && i < nlib; i++) {
  data = oneshot (bin, buf, size, i);
  r_list_append (res, data);
 }
 return res;
}

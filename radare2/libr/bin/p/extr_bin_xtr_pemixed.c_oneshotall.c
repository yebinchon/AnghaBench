
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int RList ;
typedef int RBinXtrData ;
typedef int RBin ;


 int SUB_BIN_DOS ;
 int SUB_BIN_NATIVE ;
 int SUB_BIN_NET ;
 int * oneshot (int *,int const*,int ,int ) ;
 int r_bin_xtrdata_free ;
 int r_list_append (int *,int *) ;
 int * r_list_newf (int ) ;

__attribute__((used)) static RList * oneshotall(RBin *bin, const ut8 *buf, ut64 size) {

 RBinXtrData *data = oneshot (bin, buf, size, SUB_BIN_DOS);

 if (!data) {
  return ((void*)0);
 }

 RList * res = r_list_newf (r_bin_xtrdata_free);
 r_list_append (res, data);

 if ((data = oneshot (bin, buf, size, SUB_BIN_NATIVE))){
  r_list_append (res, data);
 }

 if ((data = oneshot (bin, buf, size, SUB_BIN_NET))){
  r_list_append (res, data);
 }

 return res;
}

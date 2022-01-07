
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_4__ {int b; } ;
typedef TYPE_1__ RBinDexObj ;


 char* calloc (int,int) ;
 int r_buf_read_at (int ,int,int *,int) ;
 int r_return_val_if_fail (TYPE_1__*,int *) ;

char* r_bin_dex_get_version(RBinDexObj *bin) {
 r_return_val_if_fail (bin, ((void*)0));
 char* version = calloc (1, 8);
 if (version) {
  r_buf_read_at (bin->b, 4, (ut8*)version, 3);
  return version;
 }
 return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef long long ut64 ;
struct r_bin_te_obj_t {TYPE_1__* header; } ;
struct TYPE_2__ {int ImageBase; } ;



ut64 r_bin_te_get_image_base(struct r_bin_te_obj_t* bin)
{
 if (bin && bin->header) {
  return (ut64)bin->header->ImageBase;
 }
 return 0LL;
}

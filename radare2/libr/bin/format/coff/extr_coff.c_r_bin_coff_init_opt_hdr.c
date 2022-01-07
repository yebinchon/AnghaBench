
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_2__ {int f_opthdr; } ;
struct r_bin_coff_obj {scalar_t__ endian; int opt_hdr; int b; TYPE_1__ hdr; } ;
struct coff_opt_hdr {int dummy; } ;
struct coff_hdr {int dummy; } ;


 int r_buf_fread_at (int ,int,int *,char*,int) ;

__attribute__((used)) static bool r_bin_coff_init_opt_hdr(struct r_bin_coff_obj *obj) {
 int ret;
 if (!obj->hdr.f_opthdr) {
  return 0;
 }
 ret = r_buf_fread_at (obj->b, sizeof (struct coff_hdr),
       (ut8 *)&obj->opt_hdr, obj->endian? "2S6I": "2s6i", 1);
 if (ret != sizeof (struct coff_opt_hdr)) {
  return 0;
 }
 return 1;
}

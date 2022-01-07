
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut64 ;
struct TYPE_2__ {scalar_t__ f_magic; int f_nscns; scalar_t__ f_opthdr; } ;
struct r_bin_coff_obj {scalar_t__ size; scalar_t__ scn_hdrs; TYPE_1__ hdr; scalar_t__ endian; int b; } ;
struct coff_scn_hdr {int dummy; } ;
struct coff_opt_hdr {int dummy; } ;
struct coff_hdr {int dummy; } ;


 scalar_t__ COFF_FILE_TI_COFF ;
 int R_FREE (scalar_t__) ;
 scalar_t__ calloc (int,int) ;
 int r_buf_fread_at (int ,scalar_t__,int *,char*,int) ;

__attribute__((used)) static bool r_bin_coff_init_scn_hdr(struct r_bin_coff_obj *obj) {
 int ret, size;
 ut64 offset = sizeof (struct coff_hdr) + (obj->hdr.f_opthdr ? sizeof (struct coff_opt_hdr) : 0);
 if (obj->hdr.f_magic == COFF_FILE_TI_COFF) {
  offset += 2;
 }
 size = obj->hdr.f_nscns * sizeof (struct coff_scn_hdr);
 if (offset > obj->size || offset + size > obj->size || size < 0) {
  return 0;
 }
 obj->scn_hdrs = calloc (1, size + sizeof (struct coff_scn_hdr));
 if (!obj->scn_hdrs) {
  return 0;
 }
 ret = r_buf_fread_at (obj->b, offset, (ut8 *)obj->scn_hdrs, obj->endian? "8c6I2S1I": "8c6i2s1i", obj->hdr.f_nscns);
 if (ret != size) {
  R_FREE (obj->scn_hdrs);
  return 0;
 }
 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_2__ {int f_symptr; int f_nsyms; } ;
struct r_bin_coff_obj {int size; scalar_t__ symbols; TYPE_1__ hdr; scalar_t__ endian; int b; } ;
struct coff_symbol {int dummy; } ;


 int R_FREE (scalar_t__) ;
 scalar_t__ calloc (int,int) ;
 int r_buf_fread_at (int ,int,int *,char*,int) ;

__attribute__((used)) static bool r_bin_coff_init_symtable(struct r_bin_coff_obj *obj) {
 int ret, size;
 ut64 offset = obj->hdr.f_symptr;
 if (obj->hdr.f_nsyms >= 0xffff || !obj->hdr.f_nsyms) {
  return 0;
 }
 size = obj->hdr.f_nsyms * sizeof (struct coff_symbol);
 if (size < 0 ||
  size > obj->size ||
  offset > obj->size ||
  offset + size > obj->size) {
  return 0;
 }
 obj->symbols = calloc (1, size + sizeof (struct coff_symbol));
 if (!obj->symbols) {
  return 0;
 }
 ret = r_buf_fread_at (obj->b, offset, (ut8 *)obj->symbols, obj->endian? "8c1I2S2c": "8c1i2s2c", obj->hdr.f_nsyms);
 if (ret != size) {
  R_FREE (obj->symbols);
  return 0;
 }
 return 1;
}

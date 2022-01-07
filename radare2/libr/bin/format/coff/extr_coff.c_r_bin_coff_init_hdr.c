
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut16 ;
struct TYPE_2__ {scalar_t__ f_magic; } ;
struct r_bin_coff_obj {scalar_t__ endian; int target_id; int b; TYPE_1__ hdr; } ;
struct coff_hdr {int dummy; } ;




 scalar_t__ COFF_FILE_TI_COFF ;
 scalar_t__ COFF_IS_BIG_ENDIAN ;
 scalar_t__ COFF_IS_LITTLE_ENDIAN ;
 int r_buf_fread (int ,int *,char*,int) ;
 int r_buf_fread_at (int ,int ,int *,char*,int) ;
 int r_buf_read_ble16_at (int ,int ,scalar_t__) ;

__attribute__((used)) static bool r_bin_coff_init_hdr(struct r_bin_coff_obj *obj) {
 ut16 magic = r_buf_read_ble16_at (obj->b, 0, COFF_IS_LITTLE_ENDIAN);
 switch (magic) {
 case 128:
 case 129:
  obj->endian = COFF_IS_BIG_ENDIAN;
  break;
 default:
  obj->endian = COFF_IS_LITTLE_ENDIAN;
 }
 int ret = 0;
 ret = r_buf_fread_at (obj->b, 0, (ut8 *)&obj->hdr, obj->endian? "2S3I2S": "2s3i2s", 1);
 if (ret != sizeof (struct coff_hdr)) {
  return 0;
 }
 if (obj->hdr.f_magic == COFF_FILE_TI_COFF) {
  ret = r_buf_fread (obj->b, (ut8 *)&obj->target_id, obj->endian? "S": "s", 1);
  if (ret != sizeof (ut16)) {
   return 0;
  }
 }
 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int spiffs_page_ix ;
typedef int spiffs_obj_id ;
typedef int spiffs ;
typedef scalar_t__ s32_t ;
typedef int flags ;


 int SPIFFS_CHECK_RES (scalar_t__) ;
 scalar_t__ SPIFFS_ERR_NOT_FOUND ;
 scalar_t__ SPIFFS_OK ;
 int SPIFFS_OP_C_READ ;
 int SPIFFS_OP_C_UPDT ;
 int SPIFFS_OP_T_OBJ_LU ;
 scalar_t__ SPIFFS_PAGE_TO_PADDR (int *,int ) ;
 int SPIFFS_PH_FLAG_IXDELE ;
 scalar_t__ _spiffs_rd (int *,int,int ,scalar_t__,int,int*) ;
 scalar_t__ _spiffs_wr (int *,int,int ,scalar_t__,int,int*) ;
 scalar_t__ offsetof (int ,int) ;
 scalar_t__ spiffs_obj_lu_find_id_and_span (int *,int ,int ,int ,int *) ;
 int spiffs_page_header ;

__attribute__((used)) static s32_t spiffs_delete_obj_lazy(spiffs *fs, spiffs_obj_id obj_id) {
  spiffs_page_ix objix_hdr_pix;
  s32_t res;
  res = spiffs_obj_lu_find_id_and_span(fs, obj_id, 0, 0, &objix_hdr_pix);
  if (res == SPIFFS_ERR_NOT_FOUND) {
    return SPIFFS_OK;
  }
  SPIFFS_CHECK_RES(res);
  u8_t flags = 0xff;






  flags &= ~SPIFFS_PH_FLAG_IXDELE;
  res = _spiffs_wr(fs, SPIFFS_OP_T_OBJ_LU | SPIFFS_OP_C_UPDT,
      0, SPIFFS_PAGE_TO_PADDR(fs, objix_hdr_pix) + offsetof(spiffs_page_header, flags),
      sizeof(flags), &flags);
  return res;
}

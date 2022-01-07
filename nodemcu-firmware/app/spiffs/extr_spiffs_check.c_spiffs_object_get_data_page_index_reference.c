
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u32_t ;
typedef scalar_t__ spiffs_span_ix ;
typedef int spiffs_page_object_ix_header ;
typedef int spiffs_page_object_ix ;
typedef int spiffs_page_ix ;
typedef int spiffs_obj_id ;
typedef int spiffs ;
typedef int s32_t ;


 int SPIFFS_CHECK_RES (int ) ;
 int SPIFFS_OBJ_ID_IX_FLAG ;
 int SPIFFS_OBJ_IX_ENTRY (int *,scalar_t__) ;
 scalar_t__ SPIFFS_OBJ_IX_ENTRY_SPAN_IX (int *,scalar_t__) ;
 int SPIFFS_OP_C_READ ;
 int SPIFFS_OP_T_OBJ_LU2 ;
 int SPIFFS_PAGE_TO_PADDR (int *,int ) ;
 int _spiffs_rd (int *,int,int ,int,int,int *) ;
 int spiffs_obj_lu_find_id_and_span (int *,int,scalar_t__,int ,int *) ;

__attribute__((used)) static s32_t spiffs_object_get_data_page_index_reference(
  spiffs *fs,
  spiffs_obj_id obj_id,
  spiffs_span_ix data_spix,
  spiffs_page_ix *pix,
  spiffs_page_ix *objix_pix) {
  s32_t res;


  spiffs_span_ix objix_spix = SPIFFS_OBJ_IX_ENTRY_SPAN_IX(fs, data_spix);


  res = spiffs_obj_lu_find_id_and_span(fs, obj_id | SPIFFS_OBJ_ID_IX_FLAG, objix_spix, 0, objix_pix);
  SPIFFS_CHECK_RES(res);


  u32_t addr = SPIFFS_PAGE_TO_PADDR(fs, *objix_pix);
  if (objix_spix == 0) {

    addr += sizeof(spiffs_page_object_ix_header) + data_spix * sizeof(spiffs_page_ix);
  } else {

    addr += sizeof(spiffs_page_object_ix) + SPIFFS_OBJ_IX_ENTRY(fs, data_spix) * sizeof(spiffs_page_ix);
  }

  res = _spiffs_rd(fs, SPIFFS_OP_T_OBJ_LU2 | SPIFFS_OP_C_READ, 0, addr, sizeof(spiffs_page_ix), (u8_t *)pix);

  return res;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int spiffs_span_ix ;
typedef scalar_t__ spiffs_page_ix ;
typedef int spiffs_obj_id ;
typedef int spiffs_block_ix ;
struct TYPE_5__ {int cursor_obj_lu_entry; int cursor_block_ix; } ;
typedef TYPE_1__ spiffs ;
typedef scalar_t__ s32_t ;


 int SPIFFS_CHECK_RES (scalar_t__) ;
 scalar_t__ SPIFFS_ERR_NOT_FOUND ;
 scalar_t__ SPIFFS_OBJ_LOOKUP_ENTRY_TO_PIX (TYPE_1__*,int ,int) ;
 int SPIFFS_VIS_CHECK_ID ;
 scalar_t__ SPIFFS_VIS_END ;
 scalar_t__ spiffs_obj_lu_find_entry_visitor (TYPE_1__*,int ,int,int ,int ,int ,scalar_t__*,int *,int *,int*) ;
 int spiffs_obj_lu_find_id_and_span_v ;

s32_t spiffs_obj_lu_find_id_and_span(
    spiffs *fs,
    spiffs_obj_id obj_id,
    spiffs_span_ix spix,
    spiffs_page_ix exclusion_pix,
    spiffs_page_ix *pix) {
  s32_t res;
  spiffs_block_ix bix;
  int entry;

  res = spiffs_obj_lu_find_entry_visitor(fs,
      fs->cursor_block_ix,
      fs->cursor_obj_lu_entry,
      SPIFFS_VIS_CHECK_ID,
      obj_id,
      spiffs_obj_lu_find_id_and_span_v,
      exclusion_pix ? &exclusion_pix : 0,
      &spix,
      &bix,
      &entry);

  if (res == SPIFFS_VIS_END) {
    res = SPIFFS_ERR_NOT_FOUND;
  }

  SPIFFS_CHECK_RES(res);

  if (pix) {
    *pix = SPIFFS_OBJ_LOOKUP_ENTRY_TO_PIX(fs, bix, entry);
  }

  fs->cursor_block_ix = bix;
  fs->cursor_obj_lu_entry = entry;

  return res;
}

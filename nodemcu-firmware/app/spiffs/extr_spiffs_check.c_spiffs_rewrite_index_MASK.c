#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8_t ;
typedef  scalar_t__ spiffs_span_ix ;
typedef  int /*<<< orphan*/  spiffs_page_object_ix_header ;
typedef  int /*<<< orphan*/  spiffs_page_object_ix ;
typedef  int /*<<< orphan*/  spiffs_page_ix ;
struct TYPE_16__ {scalar_t__ span_ix; int flags; int /*<<< orphan*/  obj_id; } ;
typedef  TYPE_1__ spiffs_page_header ;
typedef  int /*<<< orphan*/  spiffs_obj_id ;
typedef  int /*<<< orphan*/  spiffs_block_ix ;
struct TYPE_17__ {int /*<<< orphan*/ * lu_work; int /*<<< orphan*/  free_cursor_obj_lu_entry; int /*<<< orphan*/  free_cursor_block_ix; } ;
typedef  TYPE_2__ spiffs ;
typedef  int /*<<< orphan*/  s32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPIFFS_ERR_CHECK_FLAGS_BAD ; 
 int /*<<< orphan*/  SPIFFS_ERR_CHECK_OBJ_ID_MISM ; 
 int /*<<< orphan*/  SPIFFS_ERR_CHECK_SPIX_MISM ; 
 int /*<<< orphan*/  SPIFFS_OBJ_ID_IX_FLAG ; 
 size_t FUNC4 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_2__*,scalar_t__) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int SPIFFS_OP_C_READ ; 
 int SPIFFS_OP_C_UPDT ; 
 int SPIFFS_OP_T_OBJ_DA ; 
 int SPIFFS_OP_T_OBJ_LU ; 
 int SPIFFS_OP_T_OBJ_LU2 ; 
 scalar_t__ FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int SPIFFS_PH_FLAG_DELET ; 
 int SPIFFS_PH_FLAG_FINAL ; 
 int SPIFFS_PH_FLAG_INDEX ; 
 int SPIFFS_PH_FLAG_IXDELE ; 
 int SPIFFS_PH_FLAG_USED ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32_t FUNC13(spiffs *fs, spiffs_obj_id obj_id, spiffs_span_ix data_spix, spiffs_page_ix new_data_pix, spiffs_page_ix objix_pix) {
  s32_t res;
  spiffs_block_ix bix;
  int entry;
  spiffs_page_ix free_pix;
  obj_id |= SPIFFS_OBJ_ID_IX_FLAG;

  // find free entry
  res = FUNC11(fs, fs->free_cursor_block_ix, fs->free_cursor_obj_lu_entry, &bix, &entry);
  FUNC3(res);
  free_pix = FUNC7(fs, bix, entry);

  // calculate object index span index for given data page span index
  spiffs_span_ix objix_spix = FUNC5(fs, data_spix);
  if (objix_spix == 0) {
    // calc index in index header
    entry = data_spix;
  } else {
    // calc entry in index
    entry = FUNC4(fs, data_spix);

  }
  // load index
  res = FUNC9(fs, SPIFFS_OP_T_OBJ_LU2 | SPIFFS_OP_C_READ,
      0, FUNC8(fs, objix_pix), FUNC2(fs), fs->lu_work);
  FUNC3(res);
  spiffs_page_header *objix_p_hdr = (spiffs_page_header *)fs->lu_work;

  // be ultra safe, double check header against provided data
  if (objix_p_hdr->obj_id != obj_id) {
    FUNC12(fs, free_pix);
    return SPIFFS_ERR_CHECK_OBJ_ID_MISM;
  }
  if (objix_p_hdr->span_ix != objix_spix) {
    FUNC12(fs, free_pix);
    return SPIFFS_ERR_CHECK_SPIX_MISM;
  }
  if ((objix_p_hdr->flags & (SPIFFS_PH_FLAG_USED | SPIFFS_PH_FLAG_IXDELE | SPIFFS_PH_FLAG_INDEX |
                            SPIFFS_PH_FLAG_FINAL | SPIFFS_PH_FLAG_DELET)) !=
                                (SPIFFS_PH_FLAG_IXDELE | SPIFFS_PH_FLAG_DELET)) {
    FUNC12(fs, free_pix);
    return SPIFFS_ERR_CHECK_FLAGS_BAD;
  }

  // rewrite in mem
  if (objix_spix == 0) {
    ((spiffs_page_ix*)((u8_t *)fs->lu_work + sizeof(spiffs_page_object_ix_header)))[data_spix] = new_data_pix;
  } else {
    ((spiffs_page_ix*)((u8_t *)fs->lu_work + sizeof(spiffs_page_object_ix)))[FUNC4(fs, data_spix)] = new_data_pix;
  }

  res = FUNC10(fs, SPIFFS_OP_T_OBJ_DA | SPIFFS_OP_C_UPDT,
      0, FUNC8(fs, free_pix), FUNC2(fs), fs->lu_work);
  FUNC3(res);
  res = FUNC10(fs, SPIFFS_OP_T_OBJ_LU | SPIFFS_OP_C_UPDT,
      0, FUNC1(fs, FUNC0(fs, free_pix)) + FUNC6(fs, free_pix) * sizeof(spiffs_page_ix),
      sizeof(spiffs_obj_id),
      (u8_t *)&obj_id);
  FUNC3(res);
  res = FUNC12(fs, objix_pix);

  return res;
}
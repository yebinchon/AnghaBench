#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8_t ;
typedef  int u32_t ;
typedef  scalar_t__ spiffs_span_ix ;
typedef  int /*<<< orphan*/  spiffs_page_object_ix_header ;
typedef  int /*<<< orphan*/  spiffs_page_object_ix ;
typedef  int /*<<< orphan*/  spiffs_page_ix ;
typedef  int spiffs_obj_id ;
typedef  int /*<<< orphan*/  spiffs ;
typedef  int /*<<< orphan*/  s32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SPIFFS_OBJ_ID_IX_FLAG ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int SPIFFS_OP_C_READ ; 
 int SPIFFS_OP_T_OBJ_LU2 ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static s32_t FUNC6(
  spiffs *fs,
  spiffs_obj_id obj_id,
  spiffs_span_ix data_spix,
  spiffs_page_ix *pix,
  spiffs_page_ix *objix_pix) {
  s32_t res;

  // calculate object index span index for given data page span index
  spiffs_span_ix objix_spix = FUNC2(fs, data_spix);

  // find obj index for obj id and span index
  res = FUNC5(fs, obj_id | SPIFFS_OBJ_ID_IX_FLAG, objix_spix, 0, objix_pix);
  FUNC0(res);

  // load obj index entry
  u32_t addr = FUNC3(fs, *objix_pix);
  if (objix_spix == 0) {
    // get referenced page from object index header
    addr += sizeof(spiffs_page_object_ix_header) + data_spix * sizeof(spiffs_page_ix);
  } else {
    // get referenced page from object index
    addr += sizeof(spiffs_page_object_ix) + FUNC1(fs, data_spix) * sizeof(spiffs_page_ix);
  }

  res = FUNC4(fs, SPIFFS_OP_T_OBJ_LU2 | SPIFFS_OP_C_READ, 0, addr, sizeof(spiffs_page_ix), (u8_t *)pix);

  return res;
}
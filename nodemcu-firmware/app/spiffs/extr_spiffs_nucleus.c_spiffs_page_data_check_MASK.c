#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8_t ;
typedef  int /*<<< orphan*/  spiffs_span_ix ;
typedef  int spiffs_page_ix ;
typedef  int /*<<< orphan*/  spiffs_page_header ;
struct TYPE_3__ {int obj_id; int /*<<< orphan*/  file_nbr; } ;
typedef  TYPE_1__ spiffs_fd ;
typedef  int /*<<< orphan*/  spiffs ;
typedef  int /*<<< orphan*/  s32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPIFFS_ERR_INDEX_REF_FREE ; 
 int /*<<< orphan*/  SPIFFS_ERR_INDEX_REF_INVALID ; 
 int /*<<< orphan*/  SPIFFS_ERR_INDEX_REF_LU ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int SPIFFS_OBJ_ID_IX_FLAG ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SPIFFS_OK ; 
 int SPIFFS_OP_C_READ ; 
 int SPIFFS_OP_T_OBJ_DA ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static s32_t FUNC7(spiffs *fs, spiffs_fd *fd, spiffs_page_ix pix, spiffs_span_ix spix) {
  s32_t res = SPIFFS_OK;
  if (pix == (spiffs_page_ix)-1) {
    // referring to page 0xffff...., bad object index
    return SPIFFS_ERR_INDEX_REF_FREE;
  }
  if (pix % FUNC3(fs) < FUNC2(fs)) {
    // referring to an object lookup page, bad object index
    return SPIFFS_ERR_INDEX_REF_LU;
  }
  if (pix > FUNC1(fs)) {
    // referring to a bad page
    return SPIFFS_ERR_INDEX_REF_INVALID;
  }
#if SPIFFS_PAGE_CHECK
  spiffs_page_header ph;
  res = _spiffs_rd(
      fs, SPIFFS_OP_T_OBJ_DA | SPIFFS_OP_C_READ,
      fd->file_nbr,
      SPIFFS_PAGE_TO_PADDR(fs, pix),
      sizeof(spiffs_page_header),
      (u8_t *)&ph);
  SPIFFS_CHECK_RES(res);
  SPIFFS_VALIDATE_DATA(ph, fd->obj_id & ~SPIFFS_OBJ_ID_IX_FLAG, spix);
#endif
  return res;
}
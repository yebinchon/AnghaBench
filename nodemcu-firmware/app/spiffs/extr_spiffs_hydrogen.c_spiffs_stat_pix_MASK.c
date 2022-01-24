#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8_t ;
typedef  scalar_t__ u32_t ;
struct TYPE_4__ {int obj_id; scalar_t__ size; int /*<<< orphan*/  meta; scalar_t__ name; int /*<<< orphan*/  pix; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ spiffs_stat ;
struct TYPE_5__ {scalar_t__ size; int /*<<< orphan*/  meta; scalar_t__ name; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ spiffs_page_object_ix_header ;
typedef  int /*<<< orphan*/  spiffs_page_ix ;
typedef  int spiffs_obj_id ;
typedef  int /*<<< orphan*/  spiffs_file ;
typedef  int /*<<< orphan*/  spiffs ;
typedef  int /*<<< orphan*/  s32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int SPIFFS_OBJ_ID_IX_FLAG ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPIFFS_OBJ_META_LEN ; 
 int /*<<< orphan*/  SPIFFS_OBJ_NAME_LEN ; 
 int SPIFFS_OP_C_READ ; 
 int SPIFFS_OP_T_OBJ_IX ; 
 int SPIFFS_OP_T_OBJ_LU ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ SPIFFS_UNDEFINED_LEN ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32_t FUNC8(spiffs *fs, spiffs_page_ix pix, spiffs_file fh, spiffs_stat *s) {
  (void)fh;
  spiffs_page_object_ix_header objix_hdr;
  spiffs_obj_id obj_id;
  s32_t res =FUNC6(fs,  SPIFFS_OP_T_OBJ_IX | SPIFFS_OP_C_READ, fh,
      FUNC4(fs, pix), sizeof(spiffs_page_object_ix_header), (u8_t *)&objix_hdr);
  FUNC0(fs, res);

  u32_t obj_id_addr = FUNC2(fs, FUNC1(fs , pix)) +
      FUNC3(fs, pix) * sizeof(spiffs_obj_id);
  res =FUNC6(fs,  SPIFFS_OP_T_OBJ_LU | SPIFFS_OP_C_READ, fh,
      obj_id_addr, sizeof(spiffs_obj_id), (u8_t *)&obj_id);
  FUNC0(fs, res);

  s->obj_id = obj_id & ~SPIFFS_OBJ_ID_IX_FLAG;
  s->type = objix_hdr.type;
  s->size = objix_hdr.size == SPIFFS_UNDEFINED_LEN ? 0 : objix_hdr.size;
  s->pix = pix;
  FUNC7((char *)s->name, (char *)objix_hdr.name, SPIFFS_OBJ_NAME_LEN);
#if SPIFFS_OBJ_META_LEN
  _SPIFFS_MEMCPY(s->meta, objix_hdr.meta, SPIFFS_OBJ_META_LEN);
#endif

  return res;
}
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
typedef  scalar_t__ u32_t ;
typedef  int /*<<< orphan*/  spiffs_file ;
typedef  int /*<<< orphan*/  spiffs ;
typedef  int /*<<< orphan*/  s32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SPIFFS_COPY_BUFFER_STACK ; 
 int /*<<< orphan*/  SPIFFS_OK ; 
 int SPIFFS_OP_C_MOVD ; 
 int SPIFFS_OP_C_MOVS ; 
 int SPIFFS_OP_T_OBJ_DA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 

s32_t FUNC4(
    spiffs *fs,
    spiffs_file fh,
    u32_t dst,
    u32_t src,
    u32_t len) {
  (void)fh;
  s32_t res;
  u8_t b[SPIFFS_COPY_BUFFER_STACK];
  while (len > 0) {
    u32_t chunk_size = FUNC0(SPIFFS_COPY_BUFFER_STACK, len);
    res = FUNC2(fs, SPIFFS_OP_T_OBJ_DA | SPIFFS_OP_C_MOVS, fh, src, chunk_size, b);
    FUNC1(res);
    res = FUNC3(fs, SPIFFS_OP_T_OBJ_DA | SPIFFS_OP_C_MOVD,  fh, dst, chunk_size, b);
    FUNC1(res);
    len -= chunk_size;
    src += chunk_size;
    dst += chunk_size;
  }
  return SPIFFS_OK;
}
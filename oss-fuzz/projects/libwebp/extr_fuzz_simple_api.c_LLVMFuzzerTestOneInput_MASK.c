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
typedef  int uint8_t ;

/* Variables and functions */
 int FUNC0 (int const* const,size_t) ; 
 int* FUNC1 (int const* const,size_t,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int const* const,size_t,int* const,size_t,int const) ; 
 int* FUNC3 (int const* const,size_t,int*,int*) ; 
 int* FUNC4 (int const* const,size_t,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int const* const,size_t,int* const,size_t,int const) ; 
 int /*<<< orphan*/  FUNC6 (int const* const,size_t,int* const,size_t,int const) ; 
 int* FUNC7 (int const* const,size_t,int*,int*) ; 
 int* FUNC8 (int const* const,size_t,int*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int const* const,size_t,int* const,size_t,int const) ; 
 int /*<<< orphan*/  FUNC10 (int const* const,size_t,int* const,size_t,int const) ; 
 int* FUNC11 (int const* const,size_t,int*,int*,int**,int**,int*,int*) ; 
 int /*<<< orphan*/  FUNC12 (int const* const,size_t,int* const,size_t,int,int* const,size_t,int const,int* const,size_t,int const) ; 
 int /*<<< orphan*/  FUNC13 (int*) ; 
 int /*<<< orphan*/  FUNC14 (int const* const,size_t,int*,int*) ; 
 int /*<<< orphan*/  FUNC15 (int* const) ; 
 size_t kFuzzPxLimit ; 
 scalar_t__ FUNC16 (size_t) ; 

int FUNC17(const uint8_t* const data, size_t size) {
  int w, h;
  if (!FUNC14(data, size, &w, &h)) return 0;
  if ((size_t)w * h > kFuzzPxLimit) return 0;

  const uint8_t value = FUNC0(data, size);
  uint8_t* buf = NULL;

  // For *Into functions, which decode into an external buffer, an
  // intentionally too small buffer can be given with low probability.
  if (value < 0x16) {
    buf = FUNC8(data, size, &w, &h);
  } else if (value < 0x2b) {
    buf = FUNC1(data, size, &w, &h);
  } else if (value < 0x40) {
    buf = FUNC4(data, size, &w, &h);
  } else if (value < 0x55) {
    buf = FUNC7(data, size, &w, &h);
  } else if (value < 0x6a) {
    buf = FUNC3(data, size, &w, &h);
  } else if (value < 0x7f) {
    uint8_t *u, *v;
    int stride, uv_stride;
    buf = FUNC11(data, size, &w, &h, &u, &v, &stride, &uv_stride);
  } else if (value < 0xe8) {
    const int stride = (value < 0xbe ? 4 : 3) * w;
    size_t buf_size = stride * h;
    if (value % 0x10 == 0) buf_size--;
    uint8_t* const ext_buf = (uint8_t*)FUNC16(buf_size);
    if (value < 0x94) {
      FUNC9(data, size, ext_buf, buf_size, stride);
    } else if (value < 0xa9) {
      FUNC2(data, size, ext_buf, buf_size, stride);
    } else if (value < 0xbe) {
      FUNC5(data, size, ext_buf, buf_size, stride);
    } else if (value < 0xd3) {
      FUNC10(data, size, ext_buf, buf_size, stride);
    } else {
      FUNC6(data, size, ext_buf, buf_size, stride);
    }
    FUNC15(ext_buf);
  } else {
    size_t luma_size = w * h;
    const int uv_stride = (w + 1) / 2;
    size_t u_size = uv_stride * (h + 1) / 2;
    size_t v_size = uv_stride * (h + 1) / 2;
    if (value % 0x10 == 0) {
      if (size & 1) luma_size--;
      if (size & 2) u_size--;
      if (size & 4) v_size--;
    }
    uint8_t* const luma_buf = (uint8_t*)FUNC16(luma_size);
    uint8_t* const u_buf = (uint8_t*)FUNC16(u_size);
    uint8_t* const v_buf = (uint8_t*)FUNC16(v_size);
    FUNC12(data, size, luma_buf, luma_size, w /* luma_stride */,
                      u_buf, u_size, uv_stride, v_buf, v_size, uv_stride);
    FUNC15(luma_buf);
    FUNC15(u_buf);
    FUNC15(v_buf);
  }

  if (buf) FUNC13(buf);

  return 0;
}
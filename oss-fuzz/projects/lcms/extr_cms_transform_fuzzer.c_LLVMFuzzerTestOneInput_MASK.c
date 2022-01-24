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
typedef  double uint8_t ;
typedef  int uint32_t ;
typedef  int cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsHTRANSFORM ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  scalar_t__ cmsColorSpaceSignature ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PT_ANY ; 
 int /*<<< orphan*/  PT_Lab ; 
 int /*<<< orphan*/  TYPE_BGR_8 ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,double*,double*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (double const*,size_t) ; 
 scalar_t__ cmsSigLabData ; 

int FUNC12(const uint8_t *data, size_t size) {
  cmsHPROFILE srcProfile = FUNC11(data, size);
  if (!srcProfile) return 0;

  cmsHPROFILE dstProfile = FUNC7();
  if (!dstProfile) {
    FUNC5(srcProfile);
    return 0;
  }

  cmsColorSpaceSignature srcCS = FUNC10(srcProfile);
  cmsUInt32Number nSrcComponents = FUNC4(srcCS);
  cmsUInt32Number srcFormat;
  if (srcCS == cmsSigLabData) {
    srcFormat =
        FUNC2(PT_Lab) | FUNC1(nSrcComponents) | FUNC0(0);
  } else {
    srcFormat =
        FUNC2(PT_ANY) | FUNC1(nSrcComponents) | FUNC0(1);
  }

  cmsUInt32Number intent = 0;
  cmsUInt32Number flags = 0;
  cmsHTRANSFORM hTransform = FUNC6(
      srcProfile, srcFormat, dstProfile, TYPE_BGR_8, intent, flags);
  FUNC5(srcProfile);
  FUNC5(dstProfile);
  if (!hTransform) return 0;

  uint8_t output[4];
  if (FUNC3(srcFormat) == 0) {  // 0 means double
    double input[nSrcComponents];
    for (uint32_t i = 0; i < nSrcComponents; i++) input[i] = 0.5f;
    FUNC9(hTransform, input, output, 1);
  } else {
    uint8_t input[nSrcComponents];
    for (uint32_t i = 0; i < nSrcComponents; i++) input[i] = 128;
    FUNC9(hTransform, input, output, 1);
  }
  FUNC8(hTransform);

  return 0;
}
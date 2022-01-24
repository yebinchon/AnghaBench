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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int UZLIB_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int FUNC10 (int /*<<< orphan*/ **,scalar_t__*,int /*<<< orphan*/ *,scalar_t__) ; 

int FUNC11 (int argc, char **argv) {
  const char *in = argv[1], *out = argv[2];
  if (argc!=3)
    return 1;
  FUNC6 ("Compressing in=%s out=%s\n", in, out);
  FILE *fin, *fout;
  int status = -1;
  uint32_t iLen, oLen;
  uint8_t *iBuf, *oBuf;

  if (!(fin = FUNC1(in, "rb")) || FUNC3(fin, 0, SEEK_END) ||
      (iLen = FUNC4(fin)) <= 0  || FUNC3(fin, 0, SEEK_SET))
    return 1;
  if ((fout = FUNC1(out, "wb")) == NULL ||
      (iBuf = (uint8_t *) FUNC9(iLen)) == NULL ||
      FUNC2(iBuf, 1, iLen, fin) != iLen)
    return 1;

  if (FUNC10 (&oBuf, &oLen, iBuf, iLen) == UZLIB_OK &&
      oLen == FUNC5(oBuf, oLen, 1, fout))
    status = UZLIB_OK;
  FUNC8(iBuf);
  if (oBuf) FUNC8(oBuf);

  FUNC0(fin);
  FUNC0(fout);

  if (status == UZLIB_OK)
    FUNC7(out);

  return (status == UZLIB_OK) ? 1: 0;
}
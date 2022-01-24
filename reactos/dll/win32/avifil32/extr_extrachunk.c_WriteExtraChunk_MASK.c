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
struct TYPE_3__ {scalar_t__ cb; scalar_t__* lp; } ;
typedef  TYPE_1__* LPEXTRACHUNKS ;
typedef  scalar_t__* LPDWORD ;
typedef  int /*<<< orphan*/ * LPCVOID ;
typedef  scalar_t__ LPBYTE ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ FOURCC ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  AVIERR_MEMORY ; 
 int /*<<< orphan*/  AVIERR_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ *,scalar_t__) ; 

HRESULT FUNC5(LPEXTRACHUNKS extra,FOURCC ckid,LPCVOID lpData, LONG size)
{
  LPDWORD lp;

  /* pre-conditions */
  FUNC3(extra != NULL);
  FUNC3(lpData != NULL);
  FUNC3(size > 0);

  if (extra->lp)
    lp = FUNC2(FUNC0(), HEAP_ZERO_MEMORY, extra->lp, extra->cb + size + 2 * sizeof(DWORD));
  else
    lp = FUNC1(FUNC0(), HEAP_ZERO_MEMORY, size + 2 * sizeof(DWORD));

  if (lp == NULL)
    return AVIERR_MEMORY;

  extra->lp  = lp;
  lp = (LPDWORD) ((LPBYTE)lp + extra->cb);
  extra->cb += size + 2 * sizeof(DWORD);

  /* insert chunk-header in block */
  lp[0] = ckid;
  lp[1] = size;

  if (lpData != NULL && size > 0)
    FUNC4(lp + 2, lpData, size);

  return AVIERR_OK;
}
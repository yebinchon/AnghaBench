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
struct TYPE_3__ {scalar_t__ cb; int /*<<< orphan*/ * lp; } ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  scalar_t__* LPLONG ;
typedef  scalar_t__* LPDWORD ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ FOURCC ;
typedef  TYPE_1__ EXTRACHUNKS ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  AVIERR_NODATA ; 
 int /*<<< orphan*/  AVIERR_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 

HRESULT FUNC3(const EXTRACHUNKS *extra,FOURCC ckid,LPVOID lpData,LPLONG size)
{
  LPBYTE lp;
  DWORD  cb;

  /* pre-conditions */
  FUNC0(extra != NULL);
  FUNC0(size != NULL);

  lp = extra->lp;
  cb = extra->cb;

  if (lp != NULL) {
    while (cb > 0) {
      if (((FOURCC*)lp)[0] == ckid) {
	/* found correct chunk */
	if (lpData != NULL && *size > 0)
	  FUNC1(lpData, lp + 2 * sizeof(DWORD),
		 FUNC2(((LPDWORD)lp)[1], *(LPDWORD)size));

	*(LPDWORD)size = ((LPDWORD)lp)[1];

	return AVIERR_OK;
      } else {
	/* skip to next chunk */
	cb -= ((LPDWORD)lp)[1] + 2 * sizeof(DWORD);
	lp += ((LPDWORD)lp)[1] + 2 * sizeof(DWORD);
      }
    }
  }

  /* wanted chunk doesn't exist */
  *size = 0;

  return AVIERR_NODATA;
}
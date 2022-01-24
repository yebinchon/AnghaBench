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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__* PWCHAR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  size_t DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,size_t,scalar_t__*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

PWCHAR FUNC5( HANDLE RegHandle, DWORD n ) {
  LONG Status;
  int MaxAdapterName = FUNC0( RegHandle );
  PWCHAR Value;
  DWORD ValueLen;

  if (MaxAdapterName == -1)
    return 0;

  ValueLen = MaxAdapterName;
  Value = (PWCHAR)FUNC2( FUNC1(), 0, MaxAdapterName * sizeof(WCHAR) );
  if (!Value) return 0;

  Status = FUNC4( RegHandle, n, Value, &ValueLen,
			  NULL, NULL, NULL, NULL );
  if (Status != ERROR_SUCCESS) {
    FUNC3(FUNC1(), 0, Value);
    return 0;
  } else {
    Value[ValueLen] = 0;
    return Value;
  }
}
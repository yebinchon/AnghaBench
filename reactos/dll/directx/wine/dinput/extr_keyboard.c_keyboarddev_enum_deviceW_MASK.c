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
typedef  int /*<<< orphan*/  LPDIDEVICEINSTANCEW ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int DI8DEVCLASS_KEYBOARD ; 
 int DI8DEVTYPE_KEYBOARD ; 
 int DIDEVTYPE_KEYBOARD ; 
 int DIEDFL_FORCEFEEDBACK ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  S_FALSE ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static HRESULT FUNC3(DWORD dwDevType, DWORD dwFlags, LPDIDEVICEINSTANCEW lpddi, DWORD version, int id)
{
  if (id != 0)
    return E_FAIL;

  if (dwFlags & DIEDFL_FORCEFEEDBACK)
    return S_FALSE;

  if ((dwDevType == 0) ||
      ((dwDevType == DIDEVTYPE_KEYBOARD) && (version < 0x0800)) ||
      (((dwDevType == DI8DEVCLASS_KEYBOARD) || (dwDevType == DI8DEVTYPE_KEYBOARD)) && (version >= 0x0800))) {
    FUNC0("Enumerating the Keyboard device\n");

    FUNC1(lpddi, version, FUNC2());
    
    return S_OK;
  }

  return S_FALSE;
}
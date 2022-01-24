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
struct TYPE_3__ {int InvComb; int /*<<< orphan*/  CurrMod; } ;
typedef  TYPE_1__ HOTKEY_INFO ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int HKCOMB_A ; 
 int HKCOMB_C ; 
 int HKCOMB_CA ; 
 int HKCOMB_NONE ; 
 int HKCOMB_S ; 
 int HKCOMB_SA ; 
 int HKCOMB_SC ; 
 int HKCOMB_SCA ; 
 int HOTKEYF_ALT ; 
 int HOTKEYF_CONTROL ; 
 int HOTKEYF_SHIFT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL
FUNC2(const HOTKEY_INFO *infoPtr)
{
    FUNC1("(infoPtr=%p)\n", infoPtr);
    if((infoPtr->InvComb & HKCOMB_NONE) && !infoPtr->CurrMod)
	return TRUE;
    if((infoPtr->InvComb & HKCOMB_S) && FUNC0(HOTKEYF_SHIFT))
	return TRUE;
    if((infoPtr->InvComb & HKCOMB_C) && FUNC0(HOTKEYF_CONTROL))
	return TRUE;
    if((infoPtr->InvComb & HKCOMB_A) && FUNC0(HOTKEYF_ALT))
	return TRUE;
    if((infoPtr->InvComb & HKCOMB_SC) && 
       FUNC0(HOTKEYF_SHIFT | HOTKEYF_CONTROL))
	return TRUE;
    if((infoPtr->InvComb & HKCOMB_SA) && FUNC0(HOTKEYF_SHIFT | HOTKEYF_ALT))
	return TRUE;
    if((infoPtr->InvComb & HKCOMB_CA) && 
       FUNC0(HOTKEYF_CONTROL | HOTKEYF_ALT))
	return TRUE;
    if((infoPtr->InvComb & HKCOMB_SCA) && 
       FUNC0(HOTKEYF_SHIFT | HOTKEYF_CONTROL | HOTKEYF_ALT))
	return TRUE;

    FUNC1("() Modifiers are valid\n");
    return FALSE;
}
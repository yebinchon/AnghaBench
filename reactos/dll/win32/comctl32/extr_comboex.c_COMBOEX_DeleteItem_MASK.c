#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ nb_items; int /*<<< orphan*/  hwndCombo; } ;
typedef  scalar_t__ INT_PTR ;
typedef  scalar_t__ INT ;
typedef  TYPE_1__ COMBOEX_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  CB_DELETESTRING ; 
 scalar_t__ CB_ERR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 

__attribute__((used)) static INT FUNC3 (COMBOEX_INFO *infoPtr, INT_PTR index)
{
    FUNC2("(index=%ld)\n", index);

    /* if item number requested does not exist then return failure */
    if ((index >= infoPtr->nb_items) || (index < 0)) return CB_ERR;
    if (!FUNC0(infoPtr, index)) return CB_ERR;

    /* doing this will result in WM_DELETEITEM being issued */
    FUNC1 (infoPtr->hwndCombo, CB_DELETESTRING, index, 0);

    return infoPtr->nb_items;
}
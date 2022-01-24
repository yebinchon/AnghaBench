#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  hwndCombo; int /*<<< orphan*/  himl; } ;
typedef  int /*<<< orphan*/  HIMAGELIST ;
typedef  TYPE_1__ COMBOEX_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static HIMAGELIST FUNC4 (COMBOEX_INFO *infoPtr, HIMAGELIST himl)
{
    HIMAGELIST himlTemp = infoPtr->himl;

    FUNC3("\n");

    infoPtr->himl = himl;

    FUNC1 (infoPtr);
    FUNC2 (infoPtr->hwndCombo, NULL, TRUE);

    /* reposition the Edit control based on whether icon exists */
    FUNC0 (infoPtr);
    return himlTemp;
}
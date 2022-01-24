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
typedef  int /*<<< orphan*/  TOOLBAR_INFO ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HIMAGELIST ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,scalar_t__) ; 
 scalar_t__ I_IMAGECALLBACK ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL
FUNC4(const TOOLBAR_INFO *infoPtr, INT index)
{
    HIMAGELIST himl;
    INT id = FUNC1(infoPtr, index);
    INT iBitmap = FUNC2(infoPtr, index);

    if (((himl = FUNC0(infoPtr, id)) &&
        iBitmap >= 0 && iBitmap < FUNC3(himl)) ||
        (index == I_IMAGECALLBACK))
      return TRUE;
    else
      return FALSE;
}
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
typedef  int /*<<< orphan*/ * PAVISTREAM ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  scalar_t__ LONG ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static BOOL FUNC10(PAVISTREAM avi1, PAVISTREAM avi2)
{
  LPVOID fmt1 = NULL, fmt2 = NULL;
  LONG size1, size2, start1, start2;
  BOOL status = FALSE;

  FUNC8(avi1 != NULL && avi2 != NULL);

  /* get stream starts and check format sizes */
  start1 = FUNC2(avi1);
  start2 = FUNC2(avi2);
  if (FUNC3(FUNC0(avi1, start1, &size1)))
    return FALSE;
  if (FUNC3(FUNC0(avi2, start2, &size2)))
    return FALSE;
  if (size1 != size2)
    return FALSE;

  /* sizes match, now get formats and compare them */
  fmt1 = FUNC5(FUNC4(), 0, size1);
  if (fmt1 == NULL)
    return FALSE;
  if (FUNC7(FUNC1(avi1, start1, fmt1, &size1))) {
    fmt2 = FUNC5(FUNC4(), 0, size1);
    if (fmt2 != NULL) {
      if (FUNC7(FUNC1(avi2, start2, fmt2, &size1)))
        status = (FUNC9(fmt1, fmt2, size1) == 0);
    }
  }

  FUNC6(FUNC4(), 0, fmt2);
  FUNC6(FUNC4(), 0, fmt1);

  return status;
}
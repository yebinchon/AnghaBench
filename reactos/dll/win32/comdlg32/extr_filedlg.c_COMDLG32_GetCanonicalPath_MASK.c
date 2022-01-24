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
typedef  int /*<<< orphan*/  PCIDLIST_ABSOLUTE ;
typedef  int /*<<< orphan*/ * LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC10(PCIDLIST_ABSOLUTE pidlAbsCurrent,
                               LPWSTR lpstrFile, LPWSTR lpstrPathAndFile)
{
  WCHAR lpstrTemp[MAX_PATH];

  /* Get the current directory name */
  if (!FUNC0(pidlAbsCurrent, lpstrPathAndFile))
  {
    /* last fallback */
    FUNC1(MAX_PATH, lpstrPathAndFile);
  }
  FUNC2(lpstrPathAndFile);

  FUNC6("current directory=%s, file=%s\n", FUNC7(lpstrPathAndFile), FUNC7(lpstrFile));

  /* if the user specified a fully qualified path use it */
  if(FUNC5(lpstrFile))
  {
    FUNC8(lpstrPathAndFile, lpstrFile);
  }
  else
  {
    /* does the path have a drive letter? */
    if (FUNC4(lpstrFile) == -1)
      FUNC9(lpstrPathAndFile+2, lpstrFile);
    else
      FUNC9(lpstrPathAndFile, lpstrFile);
  }

  /* resolve "." and ".." */
  FUNC3(lpstrTemp, lpstrPathAndFile );
  FUNC9(lpstrPathAndFile, lpstrTemp);
  FUNC6("canon=%s\n", FUNC7(lpstrPathAndFile));
}
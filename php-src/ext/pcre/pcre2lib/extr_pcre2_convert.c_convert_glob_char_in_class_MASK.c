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
typedef  int /*<<< orphan*/  PCRE2_UCHAR ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CHAR_HT ; 
 int /*<<< orphan*/  CHAR_SPACE ; 
 int /*<<< orphan*/  CHAR_UNDERSCORE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL
FUNC11(int class_index, PCRE2_UCHAR c)
{
switch (class_index)
  {
  case 1: return FUNC0(c);
  case 2: return FUNC1(c);
  case 3: return 1;
  case 4: return c == CHAR_HT || c == CHAR_SPACE;
  case 5: return FUNC2(c);
  case 6: return FUNC3(c);
  case 7: return FUNC4(c);
  case 8: return FUNC5(c);
  case 9: return FUNC6(c);
  case 10: return FUNC7(c);
  case 11: return FUNC8(c);
  case 12: return FUNC9(c);
  case 13: return FUNC0(c) || c == CHAR_UNDERSCORE;
  default: return FUNC10(c);
  }
}
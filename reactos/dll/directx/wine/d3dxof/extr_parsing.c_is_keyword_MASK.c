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
typedef  int /*<<< orphan*/  parse_buffer ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (char*,char const*,int) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static BOOL FUNC5(parse_buffer* buf, const char* keyword)
{
  char tmp[8]; /* longest keyword size (template) */
  DWORD len = FUNC4(keyword);

  if (!FUNC2(buf, tmp, len))
    return FALSE;
  if (FUNC0(tmp, keyword, len))
  {
    FUNC3(buf, len);
    return FALSE;
  }

  if (!FUNC2(buf, tmp, 1))
    return TRUE;
  if (FUNC1(tmp[0]))
  {
    FUNC3(buf, 1);
    return TRUE;
  }
  FUNC3(buf, len+1);
  return FALSE;
}
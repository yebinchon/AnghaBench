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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ TOKEN_CBRACKET ; 
 scalar_t__ TOKEN_OBRACKET ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC4(parse_buffer * buf)
{
  if (!FUNC2(buf))
    return FALSE;
  if (FUNC0(buf) == TOKEN_OBRACKET)
  {
    FUNC1(buf);
    if (!FUNC3(buf))
      return FALSE;
    if (FUNC1(buf) != TOKEN_CBRACKET)
     return FALSE;
  }

  return TRUE;
}
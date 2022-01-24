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
typedef  int /*<<< orphan*/  tm ;
struct timeval {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct timeval*,int) ; 
 int g_block ; 
 scalar_t__ g_tcp_sck ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*) ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static int
FUNC6(void)
{
  fd_set rfds;
  struct timeval tm;
  int count;
  int rv;

  rv = 0;
  if (g_block == 0)
  {
    g_block = 1;
    /* see if there really is data */
    FUNC1(&rfds);
    FUNC0((unsigned int)g_tcp_sck, &rfds);
    FUNC3(&tm, sizeof(tm));
    count = FUNC4(g_tcp_sck + 1, &rfds, 0, 0, &tm);
    if (count > 0)
    {
      if (FUNC5())
      {
        rv = 1;
      }
      else
      {
        FUNC2(0);
      }
    }
    g_block = 0;
  }
  return rv;
}
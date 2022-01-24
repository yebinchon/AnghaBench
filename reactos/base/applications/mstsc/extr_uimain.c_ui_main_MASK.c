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
typedef  int /*<<< orphan*/  uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  RDP_INFO_AUTOLOGON ; 
 int /*<<< orphan*/  RDP_LOGON_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_directory ; 
 int /*<<< orphan*/  g_domain ; 
 int /*<<< orphan*/  g_height ; 
 scalar_t__* g_password ; 
 int /*<<< orphan*/  g_server_depth ; 
 int /*<<< orphan*/  g_servername ; 
 int /*<<< orphan*/  g_shell ; 
 int /*<<< orphan*/  g_width ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(void)
{
  uint32 flags;

  /* try to connect */
  flags = RDP_LOGON_NORMAL;
  if (g_password[0] != 0)
  {
    flags |= RDP_INFO_AUTOLOGON;
  }
  if (!FUNC3(g_servername, flags, g_domain, g_password,
                   g_shell, g_directory, FALSE))
  {
    return 0;
  }
  /* init backingstore */
  FUNC0(g_width, g_height, g_server_depth);
  /* create the window */
  if (!FUNC1())
  {
    return 0;
  }
  /* if all ok, enter main loop */
  return FUNC2();
}
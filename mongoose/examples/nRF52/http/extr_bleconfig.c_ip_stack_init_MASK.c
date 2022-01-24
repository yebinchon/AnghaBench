#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  ipv6_medium_instance_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eui64_local_iid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ m_ipv6_medium ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(void)
{
  uint32_t err_code;

  err_code = FUNC1(m_ipv6_medium.ipv6_medium_instance_id, \
      &eui64_local_iid);
  FUNC0(err_code);

  err_code = FUNC4();
  FUNC0(err_code);

  //Initialize LwIP stack.
  FUNC2();

  //Initialize LwIP stack driver.
  err_code = FUNC3();
  FUNC0(err_code);
}
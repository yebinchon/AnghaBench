#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_4__ {TYPE_1__ sin_addr; } ;
union socket_address {TYPE_2__ sin; } ;
typedef  int /*<<< orphan*/  sa ;
typedef  int in_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (union socket_address*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,union socket_address*) ; 

__attribute__((used)) static const char *FUNC4(void) {
  union socket_address sa;
  in_addr_t want_addr = FUNC1("127.0.0.1");

  FUNC2(&sa, 0, sizeof(sa));
  FUNC0(FUNC3("localhost", &sa), 0);
  FUNC0(sa.sin.sin_addr.s_addr, want_addr);
  FUNC0(FUNC3("does_not,exist!in_host*file", &sa), -1);

  return NULL;
}
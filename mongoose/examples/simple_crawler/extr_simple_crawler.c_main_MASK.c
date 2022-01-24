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
struct mg_mgr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mg_mgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  initial_url ; 
 int /*<<< orphan*/  FUNC1 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_mgr*,int) ; 

int FUNC4(void) {
  struct mg_mgr mgr;

  FUNC2(&mgr, NULL);
  FUNC0(&mgr, initial_url, ~0, 0);

  for (;;) {
    FUNC3(&mgr, 1000);
  }

  FUNC1(&mgr);

  return 0;
}
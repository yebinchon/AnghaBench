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
 int /*<<< orphan*/  FUNC0 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_mgr*,int) ; 
 int /*<<< orphan*/  s_http_address ; 
 int /*<<< orphan*/  s_mqtt_address ; 
 int /*<<< orphan*/  FUNC2 (struct mg_mgr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_mgr*,int /*<<< orphan*/ ) ; 

int FUNC4(void) {
  struct mg_mgr mgr;
  FUNC0(&mgr, NULL);
  FUNC2(&mgr, s_http_address);
  FUNC3(&mgr, s_mqtt_address);
  for (;;) {
    FUNC1(&mgr, 1000);
  }
}
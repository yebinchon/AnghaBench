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
struct mg_connection {int /*<<< orphan*/  iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mg_connection*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  test_iface ; 

__attribute__((used)) static void FUNC1(struct mg_connection *nc) {
  FUNC0(nc, 0, sizeof(*nc));
  nc->iface = test_iface;
}
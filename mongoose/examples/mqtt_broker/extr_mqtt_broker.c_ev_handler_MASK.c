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
struct mg_connection {int dummy; } ;

/* Variables and functions */
 int MG_EV_POLL ; 
 int /*<<< orphan*/  FUNC0 (struct mg_connection*,int,void*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static void FUNC2(struct mg_connection *c, int ev, void *ev_data) {
  if (ev != MG_EV_POLL) FUNC1("USER HANDLER GOT EVENT %d\n", ev);
  /* Do your custom event processing here */
  FUNC0(c, ev, ev_data);
}
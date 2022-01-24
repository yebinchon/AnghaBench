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
struct simple_data {int dummy; } ;
struct mg_connection {int /*<<< orphan*/  flags; scalar_t__ user_data; } ;

/* Variables and functions */
#define  MG_EV_RECV 129 
#define  MG_EV_SEND 128 
 int /*<<< orphan*/  MG_F_SEND_AND_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (struct simple_data*,struct mg_connection*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct simple_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct simple_data*,struct mg_connection*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct simple_data*,struct mg_connection*) ; 

__attribute__((used)) static void FUNC4(struct mg_connection *nc, int ev, void *ev_data) {
  struct simple_data *d = (struct simple_data *) nc->user_data;
  FUNC1(d, ev);
  switch (ev) {
    case MG_EV_RECV: {
      FUNC2(d, nc, ev_data);
      FUNC3(d, nc);
      nc->flags |= MG_F_SEND_AND_CLOSE;
      break;
    }
    case MG_EV_SEND: {
      FUNC0(d, nc, ev_data);
      break;
    }
  }
}
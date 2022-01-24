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
struct mg_connection {int* user_data; int ev_timer_time; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (double,double) ; 
 int /*<<< orphan*/  FUNC3 (double,double) ; 
 int /*<<< orphan*/  INVALID_SOCKET ; 
 int /*<<< orphan*/  MG_F_CLOSE_IMMEDIATELY ; 
 int /*<<< orphan*/  c_int_eq ; 
 int /*<<< orphan*/  ev_timer_handler ; 
 struct mg_connection* FUNC4 (struct mg_mgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mg_connection* FUNC5 (struct mg_mgr*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC7 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mg_mgr*,int) ; 
 int FUNC9 (struct mg_connection*,int) ; 
 double FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct mg_mgr*,int,int /*<<< orphan*/ ,int*,void*) ; 

__attribute__((used)) static const char *FUNC12(void) {
  struct mg_mgr m;
  struct mg_connection *c;
  double begin, end;
  int n = 0, i;

  FUNC7(&m, NULL);
  FUNC0((c = FUNC4(&m, INVALID_SOCKET, ev_timer_handler)) != NULL);
  c->user_data = &n;

  /* MG_EV_TIMER should not fire - we did not set it up */
  FUNC8(&m, 1);
  FUNC1(n, 0);

  /*
   * Now, set it up. Make sure MG_EV_TIMER event fires.
   * Also, it brings forward the poll timeout.
   */
  FUNC1(FUNC9(c, FUNC10() + 0.1), 0.0);
  begin = FUNC10();
  /*
   * Windows is a bit sloppy about select() timeouts, so it may take
   * a couple iterations for the timer to actually fire.
   */
  for (i = 0; n != 1 && i < 5; i++) {
    FUNC8(&m, 1000);
  }
  end = FUNC10();
  FUNC1(n, 1);
  FUNC3(end - begin, 0.9);
  FUNC2(end - begin, 0.09);

  /* Make sure that timer is reset - second time it does not fire */
  FUNC1(c->ev_timer_time, 0.0);
  FUNC8(&m, 1);
  FUNC1(n, 1);

  c->flags |= MG_F_CLOSE_IMMEDIATELY;
  FUNC8(&m, 1);
  FUNC1(n, 101);

  /* Async resolver codepath */
  n = 0;
  FUNC0((c = FUNC5(&m, "awful.sad:1234", ev_timer_handler)) != NULL);
  c->user_data = &n;
  FUNC9(c, 1);
  FUNC11(&m, 1, c_int_eq, &n, (void *) 101);
  FUNC1(n, 101);

  FUNC6(&m);

  return NULL;
}
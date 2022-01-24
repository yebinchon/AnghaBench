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
typedef  int /*<<< orphan*/  time_t ;
struct mg_sntp_message {int /*<<< orphan*/  time; } ;
struct mg_connection {int dummy; } ;

/* Variables and functions */
#define  MG_SNTP_FAILED 129 
#define  MG_SNTP_REPLY 128 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* s_default_server ; 
 int s_exit_flag ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct mg_connection *c, int ev, void *ev_data) {
  struct mg_sntp_message *sm = (struct mg_sntp_message *) ev_data;
  time_t t;
  (void) c;

  switch (ev) {
    case MG_SNTP_REPLY:
      t = FUNC2(NULL);
      FUNC1(stdout, "Local time: %s", FUNC0(&t));
      t = (time_t) sm->time;
      FUNC1(stdout, "Time from %s: %s", s_default_server, FUNC0(&t));
      s_exit_flag = 1;
      break;
    case MG_SNTP_FAILED:
      FUNC1(stderr, "Failed to get time\n");
      s_exit_flag = 1;
      break;
  }
}
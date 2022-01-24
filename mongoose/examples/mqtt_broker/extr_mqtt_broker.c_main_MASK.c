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
struct mg_mqtt_broker {int dummy; } ;
struct mg_mgr {int dummy; } ;
struct mg_connection {struct mg_mqtt_broker* priv_2; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  ev_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 struct mg_connection* FUNC2 (struct mg_mgr*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_mgr*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_mqtt_broker*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 char* s_listening_address ; 
 int /*<<< orphan*/  stderr ; 

int FUNC8(void) {
  struct mg_mgr mgr;
  struct mg_connection *c;
  struct mg_mqtt_broker brk;

  FUNC3(&mgr, NULL);

  if ((c = FUNC2(&mgr, s_listening_address, ev_handler)) == NULL) {
    FUNC1(stderr, "mg_bind(%s) failed\n", s_listening_address);
    FUNC0(EXIT_FAILURE);
  }
  FUNC5(&brk, NULL);
  c->priv_2 = &brk;
  FUNC6(c);

  FUNC7("MQTT broker started on %s\n", s_listening_address);

  /*
   * TODO: Add a HTTP status page that shows current sessions
   * and subscriptions
   */

  for (;;) {
    FUNC4(&mgr, 1000);
  }
}
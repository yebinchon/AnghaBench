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
struct mg_connection {struct mg_mqtt_broker* user_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 struct mg_connection* FUNC2 (struct mg_mgr*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_mqtt_broker*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_connection*) ; 
 int /*<<< orphan*/  mqtt_handler ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC6(struct mg_mgr *mgr, const char *addr) {
  struct mg_connection *c;
  static struct mg_mqtt_broker brk;  // static is important - must not perish
  if ((c = FUNC2(mgr, addr, mqtt_handler)) == NULL) {
    FUNC1(stderr, "Cannot start MQTT server on port [%s]\n", addr);
    FUNC0(EXIT_FAILURE);
  }
  FUNC3(&brk, NULL);
  c->user_data = &brk;
  FUNC4(c);
  FUNC5("MQTT server started on %s\n", addr);
}
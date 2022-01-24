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
struct http_message {int dummy; } ;

/* Variables and functions */
 int MG_EV_HTTP_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (struct mg_connection*,struct http_message*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(struct mg_connection *c, int ev, void *ev_data) {
  if (ev == MG_EV_HTTP_REQUEST) {
    FUNC0(c, (struct http_message *) ev_data, "unit_test.c",
                       FUNC1("text/plain"), FUNC1(""));
  }
}
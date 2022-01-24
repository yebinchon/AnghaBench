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
 int MG_EV_HTTP_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (struct mg_connection*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_http_server_opts ; 

__attribute__((used)) static void FUNC1(struct mg_connection *nc, int ev, void *ev_data) {
  if (ev == MG_EV_HTTP_REQUEST) {
    FUNC0(nc, ev_data, s_http_server_opts);
  }
}
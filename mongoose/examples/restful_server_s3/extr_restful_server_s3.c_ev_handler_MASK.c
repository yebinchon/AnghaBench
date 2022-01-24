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
struct http_message {int /*<<< orphan*/  uri; } ;

/* Variables and functions */
#define  MG_EV_CLOSE 129 
#define  MG_EV_HTTP_REQUEST 128 
 int /*<<< orphan*/  FUNC0 (struct mg_connection*,struct http_message*) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connection*,struct http_message*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  s_http_server_opts ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*) ; 

__attribute__((used)) static void FUNC4(struct mg_connection *nc, int ev, void *ev_data) {
  struct http_message *hm = (struct http_message *) ev_data;

  switch (ev) {
    case MG_EV_HTTP_REQUEST:
      if (FUNC2(&hm->uri, "/upload") == 0) {
        FUNC0(nc, hm); /* Handle RESTful call */
      } else {
        FUNC1(nc, hm, s_http_server_opts); /* Serve static content */
      }
      break;
    case MG_EV_CLOSE:
      FUNC3(nc);
      break;
    default:
      break;
  }
}
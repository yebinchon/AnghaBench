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
struct mg_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  coap_handler ; 
 struct mg_connection* FUNC0 (struct mg_mgr*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_mgr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_mgr*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 char* s_default_address ; 
 int s_sig_received ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  signal_handler ; 

int FUNC7(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc;

  FUNC6(SIGTERM, signal_handler);
  FUNC6(SIGINT, signal_handler);

  FUNC2(&mgr, 0);

  nc = FUNC0(&mgr, s_default_address, coap_handler);
  if (nc == NULL) {
    FUNC5("Unable to start listener at %s\n", s_default_address);
    return -1;
  }

  FUNC5("Listening for CoAP messages at %s\n", s_default_address);

  FUNC4(nc);

  while (!s_sig_received) {
    FUNC3(&mgr, 1000000);
  }

  FUNC5("Exiting on signal %d\n", s_sig_received);

  FUNC1(&mgr);
  return 0;
}
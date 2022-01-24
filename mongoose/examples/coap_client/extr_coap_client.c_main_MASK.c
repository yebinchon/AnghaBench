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
 int /*<<< orphan*/  coap_handler ; 
 struct mg_connection* FUNC0 (struct mg_mgr*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_mgr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_mgr*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 char* s_default_address ; 
 int /*<<< orphan*/  s_time_to_exit ; 

int FUNC6(int argc, char *argv[]) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  char *address = s_default_address;

  if (argc > 1) {
    address = argv[1];
  }

  FUNC5("Using %s as CoAP server\n", address);

  FUNC2(&mgr, 0);

  nc = FUNC0(&mgr, address, coap_handler);
  if (nc == NULL) {
    FUNC5("Unable to connect to %s\n", address);
    return -1;
  }

  FUNC4(nc);

  while (!s_time_to_exit) {
    FUNC3(&mgr, 1000000);
  }

  FUNC1(&mgr);

  return 0;
}
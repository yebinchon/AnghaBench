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
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int ADDR_BUF_SIZE ; 
 int EXIT_FAILURE ; 
 int /*<<< orphan*/  ev_handler ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct mg_connection* FUNC2 (struct mg_mgr*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_mgr*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_connection*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int FUNC9(int argc, char *argv[]) {
  struct mg_mgr mgr;
  char addr[ADDR_BUF_SIZE];

  FUNC4(&mgr, NULL);

  if (argc != 3) {
    FUNC1(stderr, "Usage: %s <server:port> <data>\n", argv[0]);
    FUNC0(EXIT_FAILURE);
  }

  FUNC7(addr, sizeof(addr), "udp://%s", argv[1]);

  FUNC1(stderr, "Connecting to '%s'\n", addr);

  struct mg_connection *nc = FUNC2(&mgr, addr, ev_handler);

  if (nc == NULL) {
    FUNC1(stderr, "Failed to connect");
    FUNC0(1);
  }

  FUNC1(stderr, "Sending '%s'\n", argv[2]);

  FUNC6(nc, argv[2], FUNC8(argv[2]));

  FUNC1(stderr, "Waiting for data\n");

  for (;;) {
    FUNC5(&mgr, 10);
  }
  FUNC3(&mgr);

  return 0;
}
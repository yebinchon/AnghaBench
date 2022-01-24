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
struct mg_connection {struct mg_connection* user_data; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  sock_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  MG_F_USER_1 ; 
 int /*<<< orphan*/  MG_F_USER_2 ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  client_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 struct mg_connection* FUNC2 (struct mg_mgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_mgr*,char*,int /*<<< orphan*/ ) ; 
 struct mg_connection* FUNC4 (struct mg_mgr*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mg_mgr*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  server_handler ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin_thread ; 
 scalar_t__ FUNC11 (char*,char*) ; 

int FUNC12(int argc, char *argv[]) {
  struct mg_mgr mgr;

  if (argc != 3) {
    FUNC1(stderr, "Usage: %s <port> <client|server>\n", argv[0]);
    FUNC0(EXIT_FAILURE);
  } else if (FUNC11(argv[2], "client") == 0) {
    sock_t fds[2];
    struct mg_connection *ioconn, *server_conn;

    FUNC6(&mgr, NULL);

    // Connect to the pubsub server
    server_conn = FUNC4(&mgr, argv[1], client_handler);
    if (server_conn == NULL) {
      FUNC1(stderr, "Cannot connect to port %s\n", argv[1]);
      FUNC0(EXIT_FAILURE);
    }
    server_conn->flags |= MG_F_USER_2;  // Mark this as a client connection

    // Create a socketpair and give one end to the thread that reads stdin
    FUNC8(fds, SOCK_STREAM);
    FUNC9(stdin_thread, &fds[1]);

    // The other end of a pair goes inside the server
    ioconn = FUNC2(&mgr, fds[0], client_handler);
    ioconn->flags |= MG_F_USER_1;  // Mark this so we know this is a stdin
    ioconn->user_data = server_conn;

  } else {
    // Server code path
    FUNC6(&mgr, NULL);
    FUNC3(&mgr, argv[1], server_handler);
    FUNC10("Starting pubsub server on port %s\n", argv[1]);
  }

  for (;;) {
    FUNC7(&mgr, 1000);
  }
  FUNC5(&mgr);

  return EXIT_SUCCESS;
}
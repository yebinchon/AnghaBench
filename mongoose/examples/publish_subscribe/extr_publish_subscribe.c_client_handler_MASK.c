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
struct mbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct mg_connection {int flags; scalar_t__ user_data; struct mbuf recv_mbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int MG_EV_CLOSE ; 
 int MG_EV_CONNECT ; 
 int MG_EV_RECV ; 
 int MG_F_CLOSE_IMMEDIATELY ; 
 int MG_F_USER_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC5(struct mg_connection *conn, int ev, void *p) {
  struct mbuf *io = &conn->recv_mbuf;
  (void) p;

  if (ev == MG_EV_CONNECT) {
    if (conn->flags & MG_F_CLOSE_IMMEDIATELY) {
      FUNC4("%s\n", "Error connecting to server!");
      FUNC0(EXIT_FAILURE);
    }
    FUNC4("%s\n", "Connected to server. Type a message and press enter.");
  } else if (ev == MG_EV_RECV) {
    if (conn->flags & MG_F_USER_1) {
      // Received data from the stdin, forward it to the server
      struct mg_connection *c = (struct mg_connection *) conn->user_data;
      FUNC3(c, io->buf, io->len);
      FUNC2(io, io->len);
    } else {
      // Received data from server connection, print it
      FUNC1(io->buf, io->len, 1, stdout);
      FUNC2(io, io->len);
    }
  } else if (ev == MG_EV_CLOSE) {
    // Connection has closed, most probably cause server has stopped
    FUNC0(EXIT_SUCCESS);
  }
}
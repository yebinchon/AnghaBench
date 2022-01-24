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
struct mg_connection {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  LL_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MG_F_SEND_AND_CLOSE ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connection*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_connection*,int,int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

void FUNC5(struct mg_connection *nc, int code,
                        const char *reason) {
  if (!reason) reason = FUNC3(code);
  FUNC0(LL_DEBUG, ("%p %d %s", nc, code, reason));
  FUNC2(nc, code, FUNC4(reason),
               "Content-Type: text/plain\r\nConnection: close");
  FUNC1(nc, reason, FUNC4(reason));
  nc->flags |= MG_F_SEND_AND_CLOSE;
}
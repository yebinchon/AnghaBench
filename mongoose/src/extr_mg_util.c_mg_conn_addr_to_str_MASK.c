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
typedef  union socket_address {int dummy; } socket_address ;
struct mg_connection {int dummy; } ;
typedef  int /*<<< orphan*/  sa ;

/* Variables and functions */
 int MG_SOCK_STRINGIFY_REMOTE ; 
 int /*<<< orphan*/  FUNC0 (union socket_address*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connection*,int,union socket_address*) ; 
 int FUNC2 (union socket_address*,char*,size_t,int) ; 

int FUNC3(struct mg_connection *nc, char *buf, size_t len,
                        int flags) {
  union socket_address sa;
  FUNC0(&sa, 0, sizeof(sa));
  FUNC1(nc, flags & MG_SOCK_STRINGIFY_REMOTE, &sa);
  return FUNC2(&sa, buf, len, flags);
}
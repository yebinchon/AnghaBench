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
typedef  int /*<<< orphan*/  sock_t ;

/* Variables and functions */
 int MG_SOCK_STRINGIFY_REMOTE ; 
 int /*<<< orphan*/  FUNC0 (union socket_address*,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,union socket_address*) ; 

void FUNC2(sock_t sock, char *buf, size_t len, int flags) {
  union socket_address sa;
  FUNC1(sock, flags & MG_SOCK_STRINGIFY_REMOTE, &sa);
  FUNC0(&sa, buf, len, flags);
}
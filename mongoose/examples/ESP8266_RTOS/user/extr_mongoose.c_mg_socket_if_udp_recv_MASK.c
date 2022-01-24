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
union socket_address {int /*<<< orphan*/  sa; } ;
struct mg_connection {int /*<<< orphan*/  sock; } ;
typedef  size_t socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 

__attribute__((used)) static int FUNC2(struct mg_connection *nc, void *buf,
                                 size_t len, union socket_address *sa,
                                 size_t *sa_len) {
  socklen_t sa_len_st = *sa_len;
  int n = FUNC1(nc->sock, buf, len, 0, &sa->sa, &sa_len_st);
  *sa_len = sa_len_st;
  if (n < 0 && !FUNC0()) n = 0;
  return n;
}
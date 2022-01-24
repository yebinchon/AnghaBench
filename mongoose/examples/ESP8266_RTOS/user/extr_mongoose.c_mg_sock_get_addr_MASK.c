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
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (union socket_address*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(sock_t sock, int remote,
                             union socket_address *sa) {
  socklen_t slen = sizeof(*sa);
  FUNC2(sa, 0, slen);
  if (remote) {
    FUNC0(sock, &sa->sa, &slen);
  } else {
    FUNC1(sock, &sa->sa, &slen);
  }
}
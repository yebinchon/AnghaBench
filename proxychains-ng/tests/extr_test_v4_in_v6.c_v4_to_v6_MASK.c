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
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct in6_addr {int* s6_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct in6_addr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(const struct in_addr *v4, struct in6_addr *v6) {
	FUNC1(v6, 0, sizeof(*v6));
	v6->s6_addr[10]=0xff;
	v6->s6_addr[11]=0xff;
	FUNC0(&v6->s6_addr[12], &v4->s_addr, 4);
}
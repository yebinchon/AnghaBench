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
typedef  int /*<<< orphan*/  type ;
typedef  int /*<<< orphan*/  SOCKET ;

/* Variables and functions */
 int SOCK_DGRAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 

__attribute__((used)) static int
FUNC1(SOCKET s)
{
	int			type;
	int			typelen = sizeof(type);

	if (FUNC0(s, SOL_SOCKET, SO_TYPE, (char *) &type, &typelen))
		return 1;

	return (type == SOCK_DGRAM) ? 1 : 0;
}
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
typedef  int /*<<< orphan*/  socket_set ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static socket_set *
FUNC1(int count)
{
	return (socket_set *) FUNC0(sizeof(socket_set));
}
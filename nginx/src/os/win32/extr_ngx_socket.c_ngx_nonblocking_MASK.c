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
typedef  int /*<<< orphan*/  ngx_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FIONBIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ; 

int
FUNC1(ngx_socket_t s)
{
    unsigned long  nb = 1;

    return FUNC0(s, FIONBIO, &nb);
}
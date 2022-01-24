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
struct Source {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct Source const*,unsigned int) ; 
 scalar_t__ FUNC1 (struct Source const*,unsigned int) ; 

int FUNC2(const struct Source *src, unsigned ip, unsigned port)
{
    return FUNC0(src, ip) && FUNC1(src, port);
}
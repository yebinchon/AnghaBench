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
struct route_list {int iflags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int RL_DID_REDIRECT_DEFAULT_GATEWAY ; 

__attribute__((used)) static inline int
FUNC1(const struct route_list *rl)
{
    return rl && FUNC0(rl->iflags & RL_DID_REDIRECT_DEFAULT_GATEWAY);
}
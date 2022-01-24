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
struct skb_shared_info {int dummy; } ;
struct ag71xx {int rx_buf_size; } ;

/* Variables and functions */
 int FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(struct ag71xx *ag)
{
	return ag->rx_buf_size +
	       FUNC0(sizeof(struct skb_shared_info));
}
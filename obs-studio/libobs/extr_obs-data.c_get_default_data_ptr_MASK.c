#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void uint8_t ;
struct TYPE_4__ {int data_len; } ;
typedef  TYPE_1__ obs_data_item_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static inline void *FUNC1(obs_data_item_t *item)
{
	return (uint8_t *)FUNC0(item) + item->data_len;
}
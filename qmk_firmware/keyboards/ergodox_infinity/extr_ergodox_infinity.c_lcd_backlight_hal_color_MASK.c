#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_6__ {void* CnV; } ;
struct TYPE_5__ {void* CnV; } ;
struct TYPE_4__ {void* CnV; } ;

/* Variables and functions */
 TYPE_3__ CHANNEL_BLUE ; 
 TYPE_2__ CHANNEL_GREEN ; 
 TYPE_1__ CHANNEL_RED ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(uint16_t r, uint16_t g, uint16_t b) {
	CHANNEL_RED.CnV = FUNC0(r);
	CHANNEL_GREEN.CnV = FUNC0(g);
	CHANNEL_BLUE.CnV = FUNC0(b);
}
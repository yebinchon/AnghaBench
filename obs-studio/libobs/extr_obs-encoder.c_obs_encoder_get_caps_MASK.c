#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  caps; } ;
struct TYPE_6__ {TYPE_1__ orig_info; } ;
typedef  TYPE_2__ obs_encoder_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__ const*,char*) ; 

uint32_t FUNC1(const obs_encoder_t *encoder)
{
	return FUNC0(encoder, "obs_encoder_get_caps")
		       ? encoder->orig_info.caps
		       : 0;
}
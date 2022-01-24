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
struct obs_encoder_info {char const* codec; } ;

/* Variables and functions */
 struct obs_encoder_info* FUNC0 (char const*) ; 

const char *FUNC1(const char *id)
{
	struct obs_encoder_info *info = FUNC0(id);
	return info ? info->codec : NULL;
}
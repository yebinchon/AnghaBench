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
struct obs_encoder_info {char const* (* get_name ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  type_data; } ;

/* Variables and functions */
 struct obs_encoder_info* FUNC0 (char const*) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 

const char *FUNC2(const char *id)
{
	struct obs_encoder_info *ei = FUNC0(id);
	return ei ? ei->get_name(ei->type_data) : NULL;
}
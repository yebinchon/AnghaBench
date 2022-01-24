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
struct ep_param {int dummy; } ;
struct effect_parser {int /*<<< orphan*/  cfp; } ;

/* Variables and functions */
 scalar_t__ PARSE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct effect_parser*,struct ep_param*) ; 

__attribute__((used)) static inline bool FUNC2(struct effect_parser *ep,
					 struct ep_param *param)
{
	if (FUNC1(ep, param) != PARSE_SUCCESS)
		return false;

	if (!FUNC0(&ep->cfp))
		return false;

	return true;
}
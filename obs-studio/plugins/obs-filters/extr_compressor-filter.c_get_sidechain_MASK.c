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
struct compressor_data {scalar_t__ weak_sidechain; } ;
typedef  int /*<<< orphan*/  obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 

__attribute__((used)) static inline obs_source_t *FUNC1(struct compressor_data *cd)
{
	if (cd->weak_sidechain)
		return FUNC0(cd->weak_sidechain);
	return NULL;
}
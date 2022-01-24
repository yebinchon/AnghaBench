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
struct fpm_array_s {scalar_t__ used; } ;

/* Variables and functions */
 void* FUNC0 (struct fpm_array_s*,scalar_t__) ; 

__attribute__((used)) static inline void *FUNC1(struct fpm_array_s *a) /* {{{ */
{
	return FUNC0(a, a->used - 1);
}
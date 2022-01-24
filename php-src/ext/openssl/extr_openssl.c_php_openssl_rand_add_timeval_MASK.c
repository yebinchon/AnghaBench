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
typedef  int /*<<< orphan*/  tv ;
struct timeval {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeval*,int,double) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2()  /* {{{ */
{
	struct timeval tv;

	FUNC1(&tv, NULL);
	FUNC0(&tv, sizeof(tv), 0.0);
}
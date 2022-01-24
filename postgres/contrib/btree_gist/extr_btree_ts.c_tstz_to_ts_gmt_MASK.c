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
typedef  int /*<<< orphan*/  TimestampTz ;
typedef  int /*<<< orphan*/  Timestamp ;

/* Variables and functions */

__attribute__((used)) static inline Timestamp
FUNC0(TimestampTz ts)
{
	/* No timezone correction is needed, since GMT is offset 0 by definition */
	return (Timestamp) ts;
}
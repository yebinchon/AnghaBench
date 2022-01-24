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
typedef  int /*<<< orphan*/  LONG_DOUBLE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

inline LONG_DOUBLE *FUNC2(const LONG_DOUBLE *series, size_t entries) {
    LONG_DOUBLE *copy = FUNC0(sizeof(LONG_DOUBLE) * entries);
    FUNC1(copy, series, sizeof(LONG_DOUBLE) * entries);
    return copy;
}
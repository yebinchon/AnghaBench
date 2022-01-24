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
typedef  int /*<<< orphan*/  ut8 ;
typedef  scalar_t__ ut64 ;

/* Variables and functions */
 scalar_t__ UT32_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC1(const ut8 *buf, int size) {
	ut64 n = FUNC0 (buf, size);
	return (n < UT32_MAX)? (int)n: 0;
}
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
typedef  int ut64 ;
typedef  int /*<<< orphan*/  ut32 ;

/* Variables and functions */
 int FUNC0 (void const*,int) ; 
 scalar_t__ FUNC1 (void const*) ; 

__attribute__((used)) static inline ut64 FUNC2(const void *src) {
	ut64 val = ((ut64)(FUNC1 (src))) << 32;
	val |= FUNC0 (src, sizeof (ut32));
	return val;
}
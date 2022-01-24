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
typedef  int uint64 ;
typedef  int uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PG_UINT32_MAX ; 
 int FUNC1 (int) ; 

__attribute__((used)) static inline uint32
FUNC2(uint32 val, uint64 m)
{
	FUNC0(m <= PG_UINT32_MAX + FUNC1(1));
	FUNC0(((m - 1) & m) == 0);

	return val & (m - 1);
}
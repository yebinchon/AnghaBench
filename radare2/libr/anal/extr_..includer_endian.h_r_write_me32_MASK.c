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
typedef  int ut32 ;
typedef  int /*<<< orphan*/  ut16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 

__attribute__((used)) static inline void FUNC2(void *dest, ut32 val) {
	FUNC1 (dest, val);
	FUNC0 (dest, val >> 16, sizeof (ut16));
}
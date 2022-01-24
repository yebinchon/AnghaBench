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
typedef  int /*<<< orphan*/  ut64 ;
typedef  int /*<<< orphan*/  ut32 ;
typedef  int /*<<< orphan*/  ut16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC4(void *dst, ut64 val, bool big_endian, int size) {
	switch (size) {
	case 8:
		((ut8*)dst)[0] = (ut8) val;
		break;
	case 16:
		FUNC0 (dst, (ut16) val, big_endian);
		break;
	case 24:
		FUNC1 (dst, (ut32) val, big_endian);
		break;
	case 32:
		FUNC2 (dst, (ut32) val, big_endian);
		break;
	case 64:
		FUNC3 (dst, val, big_endian);
		break;
	default:
		break;
	}
}
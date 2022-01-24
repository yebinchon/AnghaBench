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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct csum_state {int size; } ;

/* Variables and functions */
#define  CSUM_SIZE_16 129 
#define  CSUM_SIZE_8 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct csum_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct csum_state*) ; 

void
FUNC2(uint8_t *p, uint32_t len, struct csum_state *css)
{
	switch (css->size) {
	case CSUM_SIZE_8:
		FUNC1(p,len,css);
		break;
	case CSUM_SIZE_16:
		FUNC0(p,len,css);
		break;
	}
}
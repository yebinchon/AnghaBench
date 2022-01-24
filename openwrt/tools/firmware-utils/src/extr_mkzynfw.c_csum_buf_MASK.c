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
typedef  int /*<<< orphan*/  uint16_t ;
struct csum_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csum_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct csum_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct csum_state*) ; 

uint16_t
FUNC3(uint8_t *p, uint32_t len)
{
	struct csum_state css;

	FUNC1(&css);
	FUNC2(p, len, &css);
	return FUNC0(&css);

}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
struct TYPE_3__ {int bits; int* data; int bytes; } ;
typedef  int /*<<< orphan*/  PX_MD ;
typedef  TYPE_1__ PGP_MPI ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int) ; 

int
FUNC1(PX_MD *md, PGP_MPI *n)
{
	uint8		buf[2];

	buf[0] = n->bits >> 8;
	buf[1] = n->bits & 0xFF;
	FUNC0(md, buf, 2);
	FUNC0(md, n->data, n->bytes);

	return 0;
}
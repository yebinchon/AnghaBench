#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint8 ;
struct TYPE_5__ {int bytes; unsigned int* data; } ;
typedef  int /*<<< orphan*/  PullFilter ;
typedef  TYPE_1__ PGP_MPI ;

/* Variables and functions */
 int FUNC0 (int,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,unsigned int*) ; 

int
FUNC3(PullFilter *src, PGP_MPI **mpi)
{
	int			res;
	uint8		hdr[2];
	int			bits;
	PGP_MPI    *n;

	res = FUNC2(src, 2, hdr);
	if (res < 0)
		return res;
	bits = ((unsigned) hdr[0] << 8) + hdr[1];

	res = FUNC0(bits, &n);
	if (res < 0)
		return res;

	res = FUNC2(src, n->bytes, n->data);
	if (res < 0)
		FUNC1(n);
	else
		*mpi = n;
	return res;
}
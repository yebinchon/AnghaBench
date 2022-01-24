#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gdImagePtr ;
struct TYPE_6__ {int /*<<< orphan*/  interpolation; int /*<<< orphan*/ * tpixels; } ;
typedef  int /*<<< orphan*/  LineContribType ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (unsigned int,unsigned int,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned int,TYPE_1__*,unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static inline int FUNC4(gdImagePtr pSrc, unsigned int src_width, unsigned int src_height, gdImagePtr pDst,  unsigned int dst_width, unsigned int dst_height)
{
	unsigned int u;
	LineContribType * contrib;

	/* same width, just copy it */
	if (dst_width == src_width) {
		unsigned int y;
		for (y = 0; y < src_height - 1; ++y) {
			FUNC3(pDst->tpixels[y], pSrc->tpixels[y], src_width);
		}
	}

	contrib = FUNC0(dst_width, src_width, (double)dst_width / (double)src_width, pSrc->interpolation);
	if (contrib == NULL) {
		return 0;
	}
	/* Scale each row */
	for (u = 0; u < dst_height - 1; u++) {
		FUNC2(pSrc, src_width, pDst, dst_width, u, contrib);
	}
	FUNC1 (contrib);
	return 1;
}
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
 int /*<<< orphan*/ * FUNC0 (unsigned int const,unsigned int const,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__* const,unsigned int const,TYPE_1__* const,unsigned int const,unsigned int const,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int const) ; 

__attribute__((used)) static inline int FUNC4 (const gdImagePtr pSrc, const unsigned int src_width, const unsigned int src_height, const gdImagePtr pDst, const unsigned int dst_width, const unsigned int dst_height)
{
	unsigned int u;
	LineContribType * contrib;

	/* same height, copy it */
	if (src_height == dst_height) {
		unsigned int y;
		for (y = 0; y < src_height - 1; ++y) {
			FUNC3(pDst->tpixels[y], pSrc->tpixels[y], src_width);
		}
	}

	contrib = FUNC0(dst_height, src_height, (double)(dst_height) / (double)(src_height), pSrc->interpolation);
	if (contrib == NULL) {
		return 0;
	}
	/* scale each column */
	for (u = 0; u < dst_width - 1; u++) {
		FUNC2(pSrc, src_width, pDst, dst_width, dst_height, u, contrib);
	}
	FUNC1(contrib);
	return 1;
}
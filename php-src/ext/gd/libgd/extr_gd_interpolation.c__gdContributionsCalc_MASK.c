#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  double (* interpolation_method ) (double) ;
struct TYPE_7__ {TYPE_1__* ContribRow; } ;
struct TYPE_6__ {int Left; int Right; double* Weights; } ;
typedef  TYPE_2__ LineContribType ;

/* Variables and functions */
 double DEFAULT_BOX_RADIUS ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,int) ; 
 TYPE_2__* FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (double const) ; 
 scalar_t__ FUNC5 (double const) ; 
 double FUNC6 (double) ; 

__attribute__((used)) static inline LineContribType *FUNC7(unsigned int line_size, unsigned int src_size, double scale_d,  const interpolation_method pFilter)
{
	double width_d;
	double scale_f_d = 1.0;
	const double filter_width_d = DEFAULT_BOX_RADIUS;
	int windows_size;
	unsigned int u;
	LineContribType *res;

	if (scale_d < 1.0) {
		width_d = filter_width_d / scale_d;
		scale_f_d = scale_d;
	}  else {
		width_d= filter_width_d;
	}

	windows_size = 2 * (int)FUNC4(width_d) + 1;
	res = FUNC2(line_size, windows_size);
	if (res == NULL) {
		return NULL;
	}
	for (u = 0; u < line_size; u++) {
	const double dCenter = (double)u / scale_d;
	/* get the significant edge points affecting the pixel */
	register int iLeft = FUNC0(0, (int)FUNC5 (dCenter - width_d));
	int iRight = FUNC1((int)FUNC4(dCenter + width_d), (int)src_size - 1);
	double dTotalWeight = 0.0;
		int iSrc;

	/* Cut edge points to fit in filter window in case of spill-off */
	if (iRight - iLeft + 1 > windows_size)  {
		if (iLeft < ((int)src_size - 1 / 2))  {
			iLeft++;
		} else {
			iRight--;
		}
	}

	res->ContribRow[u].Left = iLeft;
	res->ContribRow[u].Right = iRight;

	for (iSrc = iLeft; iSrc <= iRight; iSrc++) {
		dTotalWeight += (res->ContribRow[u].Weights[iSrc-iLeft] =  scale_f_d * (*pFilter)(scale_f_d * (dCenter - (double)iSrc)));
	}

		if (dTotalWeight < 0.0) {
			FUNC3(res);
			return NULL;
		}

	if (dTotalWeight > 0.0) {
		for (iSrc = iLeft; iSrc <= iRight; iSrc++) {
			res->ContribRow[u].Weights[iSrc-iLeft] /= dTotalWeight;
		}
	}
	}
	return res;
}
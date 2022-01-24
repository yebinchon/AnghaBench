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
typedef  scalar_t__ uint32 ;
struct _HPDF_CCITT_Data {int dummy; } ;
typedef  int int32 ;
typedef  int /*<<< orphan*/  HPDF_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  HPDF_OK ; 
 int FUNC0 (unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  TIFFFaxBlackCodes ; 
 int /*<<< orphan*/  TIFFFaxWhiteCodes ; 
 scalar_t__ FUNC1 (unsigned char*,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC2 (unsigned char*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  horizcode ; 
 int /*<<< orphan*/  passcode ; 
 int /*<<< orphan*/  FUNC3 (struct _HPDF_CCITT_Data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct _HPDF_CCITT_Data*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * vcodes ; 

__attribute__((used)) static HPDF_STATUS 
FUNC5(struct _HPDF_CCITT_Data *pData, unsigned char* bp, unsigned char* rp, uint32 bits)
{
#define	PIXEL(buf,ix)	((((buf)[(ix)>>3]) >> (7-((ix)&7))) & 1)
        uint32 a0 = 0;
	uint32 a1 = (PIXEL(bp, 0) != 0 ? 0 : FUNC1(bp, 0, bits, 0));
	uint32 b1 = (PIXEL(rp, 0) != 0 ? 0 : FUNC1(rp, 0, bits, 0));
	uint32 a2, b2;

	for (;;) {
		b2 = FUNC2(rp, b1, bits, PIXEL(rp,b1));
		if (b2 >= a1) {
			int32 d = b1 - a1;
			if (!(-3 <= d && d <= 3)) {	/* horizontal mode */
				a2 = FUNC2(bp, a1, bits, PIXEL(bp,a1));
				FUNC3(pData, &horizcode);
				if (a0+a1 == 0 || PIXEL(bp, a0) == 0) {
					FUNC4(pData, a1-a0, TIFFFaxWhiteCodes);
					FUNC4(pData, a2-a1, TIFFFaxBlackCodes);
				} else {
					FUNC4(pData, a1-a0, TIFFFaxBlackCodes);
					FUNC4(pData, a2-a1, TIFFFaxWhiteCodes);
				}
				a0 = a2;
			} else {			/* vertical mode */
				FUNC3(pData, &vcodes[d+3]);
				a0 = a1;
			}
		} else {				/* pass mode */
			FUNC3(pData, &passcode);
			a0 = b2;
		}
		if (a0 >= bits)
			break;
		a1 = FUNC1(bp, a0, bits, PIXEL(bp,a0));
		b1 = FUNC1(rp, a0, bits, !PIXEL(bp,a0));
		b1 = FUNC1(rp, b1, bits, PIXEL(bp,a0));
	}
	return HPDF_OK;
#undef PIXEL
}
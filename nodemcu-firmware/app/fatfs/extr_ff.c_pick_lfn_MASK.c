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
typedef  int WCHAR ;
typedef  int UINT ;
typedef  int BYTE ;

/* Variables and functions */
 int FF_MAX_LFN ; 
 int LDIR_FstClusLO ; 
 size_t LDIR_Ord ; 
 int LLEF ; 
 int* LfnOfs ; 
 int FUNC0 (int*) ; 

__attribute__((used)) static int FUNC1 (	/* 1:succeeded, 0:buffer overflow or invalid LFN entry */
	WCHAR* lfnbuf,		/* Pointer to the LFN working buffer */
	BYTE* dir			/* Pointer to the LFN entry */
)
{
	UINT i, s;
	WCHAR wc, uc;


	if (FUNC0(dir + LDIR_FstClusLO) != 0) return 0;	/* Check LDIR_FstClusLO is 0 */

	i = ((dir[LDIR_Ord] & ~LLEF) - 1) * 13;	/* Offset in the LFN buffer */

	for (wc = 1, s = 0; s < 13; s++) {		/* Process all characters in the entry */
		uc = FUNC0(dir + LfnOfs[s]);		/* Pick an LFN character */
		if (wc != 0) {
			if (i >= FF_MAX_LFN) return 0;	/* Buffer overflow? */
			lfnbuf[i++] = wc = uc;			/* Store it */
		} else {
			if (uc != 0xFFFF) return 0;		/* Check filler */
		}
	}

	if (dir[LDIR_Ord] & LLEF) {				/* Put terminator if it is the last LFN part */
		if (i >= FF_MAX_LFN) return 0;		/* Buffer overflow? */
		lfnbuf[i] = 0;
	}

	return 1;		/* The part of LFN is valid */
}
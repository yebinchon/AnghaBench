#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int wSamplesPerBlock; } ;
struct TYPE_6__ {TYPE_1__* pwfxSrc; } ;
struct TYPE_5__ {int nBlockAlign; } ;
typedef  TYPE_2__* PACMDRVSTREAMINSTANCE ;
typedef  TYPE_3__* LPIMAADPCMWAVEFORMAT ;
typedef  int* LPDWORD ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char const,int*,int*) ; 

__attribute__((used)) static	void FUNC5(PACMDRVSTREAMINSTANCE adsi,
                         const unsigned char* src, LPDWORD nsrc,
                         unsigned char* dst, LPDWORD ndst)
{
    int         i;
    int         sampleL, sampleR;
    int		stepIndexL, stepIndexR;
    int		nsamp_blk = ((LPIMAADPCMWAVEFORMAT)adsi->pwfxSrc)->wSamplesPerBlock;
    int		nsamp;
    /* compute the number of entire blocks we can decode...
     * it's the min of the number of entire blocks in source buffer and the number
     * of entire blocks in destination buffer
     */
    DWORD	nblock = FUNC3(*nsrc / adsi->pwfxSrc->nBlockAlign,
                             *ndst / (nsamp_blk * 2 * 2));

    *nsrc = nblock * adsi->pwfxSrc->nBlockAlign;
    *ndst = nblock * (nsamp_blk * 2 * 2);

    nsamp_blk--; /* remove the sample in block header */
    for (; nblock > 0; nblock--)
    {
        const unsigned char* in_src = src;

	/* handle headers first */
	sampleL = FUNC0(src);
	stepIndexL = (unsigned)*(src + 2);
        FUNC2(&stepIndexL);
	src += 4;
	FUNC1(dst, sampleL);	dst += 2;

	sampleR = FUNC0(src);
	stepIndexR = (unsigned)*(src + 2);
        FUNC2(&stepIndexR);
	src += 4;
	FUNC1(dst, sampleR);	dst += 2;

	for (nsamp = nsamp_blk; nsamp > 0; nsamp -= 8)
        {
            for (i = 0; i < 4; i++)
            {
                FUNC4(*src, &stepIndexL, &sampleL);
                FUNC1(dst + (2 * i + 0) * 4 + 0, sampleL);
                FUNC4(*src++ >> 4, &stepIndexL, &sampleL);
                FUNC1(dst + (2 * i + 1) * 4 + 0, sampleL);
            }
            for (i = 0; i < 4; i++)
            {
                FUNC4(*src , &stepIndexR, &sampleR);
                FUNC1(dst + (2 * i + 0) * 4 + 2, sampleR);
                FUNC4(*src++ >>4, &stepIndexR, &sampleR);
                FUNC1(dst + (2 * i + 1) * 4 + 2, sampleR);
            }
            dst += 32;
        }
        /* we have now to realign the source pointer on block */
        src = in_src + adsi->pwfxSrc->nBlockAlign;
    }
}
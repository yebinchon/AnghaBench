
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int stepIndexL; } ;
struct TYPE_8__ {int wSamplesPerBlock; } ;
struct TYPE_7__ {scalar_t__ dwDriver; TYPE_1__* pwfxDst; } ;
struct TYPE_6__ {int nBlockAlign; } ;
typedef TYPE_2__* PACMDRVSTREAMINSTANCE ;
typedef TYPE_3__* LPIMAADPCMWAVEFORMAT ;
typedef int* LPDWORD ;
typedef int DWORD ;
typedef int BYTE ;
typedef TYPE_4__ AcmAdpcmData ;


 int R16 (unsigned char const*) ;
 int W16 (unsigned char*,int) ;
 int generate_nibble (int,int*,int*) ;
 int min (int,int) ;

__attribute__((used)) static void cvtMM16imaK(PACMDRVSTREAMINSTANCE adsi,
                         const unsigned char* src, LPDWORD nsrc,
                         unsigned char* dst, LPDWORD ndst)
{
    int stepIndex;
    int sample;
    BYTE code1, code2;
    int nsamp_blk = ((LPIMAADPCMWAVEFORMAT)adsi->pwfxDst)->wSamplesPerBlock;
    int nsamp;




    DWORD nblock = min(*nsrc / (nsamp_blk * 2),
                             *ndst / adsi->pwfxDst->nBlockAlign);

    *nsrc = nblock * (nsamp_blk * 2);
    *ndst = nblock * adsi->pwfxDst->nBlockAlign;

    stepIndex = ((AcmAdpcmData*)adsi->dwDriver)->stepIndexL;
    nsamp_blk--;

    for (; nblock > 0; nblock--)
    {
        unsigned char* in_dst = dst;
     sample = R16(src); src += 2;
 W16(dst, sample); dst += 2;
 *dst = (unsigned char)(unsigned)stepIndex;
 dst += 2;

 for (nsamp = nsamp_blk; nsamp > 0; nsamp -= 2)
        {
            code1 = generate_nibble(R16(src), &stepIndex, &sample);
            src += 2;
            code2 = generate_nibble(R16(src), &stepIndex, &sample);
            src += 2;
            *dst++ = (code2 << 4) | code1;
 }
 dst = in_dst + adsi->pwfxDst->nBlockAlign;
    }
    ((AcmAdpcmData*)adsi->dwDriver)->stepIndexL = stepIndex;
}

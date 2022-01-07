
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 scalar_t__ BWRITERSTT_1D ;
 scalar_t__ BWRITERSTT_2D ;
 scalar_t__ BWRITERSTT_CUBE ;
 scalar_t__ BWRITERSTT_UNKNOWN ;
 scalar_t__ BWRITERSTT_VOLUME ;
 scalar_t__ D3DSTT_1D ;
 scalar_t__ D3DSTT_2D ;
 scalar_t__ D3DSTT_CUBE ;
 scalar_t__ D3DSTT_UNKNOWN ;
 scalar_t__ D3DSTT_VOLUME ;
 int FIXME (char*,scalar_t__) ;

__attribute__((used)) static DWORD d3d9_sampler(DWORD bwriter_sampler)
{
    if (bwriter_sampler == BWRITERSTT_UNKNOWN) return D3DSTT_UNKNOWN;
    if (bwriter_sampler == BWRITERSTT_1D) return D3DSTT_1D;
    if (bwriter_sampler == BWRITERSTT_2D) return D3DSTT_2D;
    if (bwriter_sampler == BWRITERSTT_CUBE) return D3DSTT_CUBE;
    if (bwriter_sampler == BWRITERSTT_VOLUME) return D3DSTT_VOLUME;
    FIXME("Unexpected BWRITERSAMPLER_TEXTURE_TYPE type %#x.\n", bwriter_sampler);

    return 0;
}

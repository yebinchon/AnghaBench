
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;



DWORD DSOUND_fraglen(DWORD nSamplesPerSec, DWORD nBlockAlign)
{
    if (nSamplesPerSec <= 12800)
        return 128 * nBlockAlign;

    if (nSamplesPerSec <= 25600)
        return 256 * nBlockAlign;

    if (nSamplesPerSec <= 51200)
        return 512 * nBlockAlign;

    return 1024 * nBlockAlign;
}

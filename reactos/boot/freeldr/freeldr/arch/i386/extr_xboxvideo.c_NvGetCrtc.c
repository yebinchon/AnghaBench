
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef int * PUCHAR ;


 scalar_t__ NV2A_CRTC_REGISTER_INDEX ;
 scalar_t__ NV2A_CRTC_REGISTER_VALUE ;

UCHAR
NvGetCrtc(UCHAR Index)
{
    *((PUCHAR) NV2A_CRTC_REGISTER_INDEX) = Index;
    return *((PUCHAR) NV2A_CRTC_REGISTER_VALUE);
}

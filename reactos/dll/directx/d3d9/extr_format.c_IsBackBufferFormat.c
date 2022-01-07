
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ D3DFORMAT ;
typedef int BOOL ;


 scalar_t__ D3DFMT_A1R5G5B5 ;
 scalar_t__ D3DFMT_A8R8G8B8 ;
 scalar_t__ IsExtendedFormat (scalar_t__) ;

BOOL IsBackBufferFormat(D3DFORMAT Format)
{
    return ((Format >= D3DFMT_A8R8G8B8) && (Format < D3DFMT_A1R5G5B5)) ||
            (IsExtendedFormat(Format));
}

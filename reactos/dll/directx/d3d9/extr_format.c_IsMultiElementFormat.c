
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ D3DFORMAT ;
typedef int BOOL ;


 scalar_t__ D3DFMT_MULTI2_ARGB8 ;

BOOL IsMultiElementFormat(D3DFORMAT Format)
{
    return (Format == D3DFMT_MULTI2_ARGB8);
}

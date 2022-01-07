
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ D3DFORMAT ;
typedef int BOOL ;


 scalar_t__ D3DFMT_A2R10G10B10 ;

BOOL IsExtendedFormat(D3DFORMAT Format)
{
    return (Format == D3DFMT_A2R10G10B10);
}

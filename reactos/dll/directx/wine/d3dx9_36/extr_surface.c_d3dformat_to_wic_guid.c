
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ d3dformat; int const* wic_guid; } ;
typedef int GUID ;
typedef scalar_t__ D3DFORMAT ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* wic_pixel_formats ;

__attribute__((used)) static const GUID *d3dformat_to_wic_guid(D3DFORMAT format)
{
    unsigned int i;

    for (i = 0; i < ARRAY_SIZE(wic_pixel_formats); i++)
    {
        if (wic_pixel_formats[i].d3dformat == format)
            return wic_pixel_formats[i].wic_guid;
    }

    return ((void*)0);
}

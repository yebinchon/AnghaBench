
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int d3dformat; int wic_guid; } ;
typedef int GUID ;
typedef int D3DFORMAT ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int D3DFMT_UNKNOWN ;
 scalar_t__ IsEqualGUID (int ,int const*) ;
 TYPE_1__* wic_pixel_formats ;

__attribute__((used)) static D3DFORMAT wic_guid_to_d3dformat(const GUID *guid)
{
    unsigned int i;

    for (i = 0; i < ARRAY_SIZE(wic_pixel_formats); i++)
    {
        if (IsEqualGUID(wic_pixel_formats[i].wic_guid, guid))
            return wic_pixel_formats[i].d3dformat;
    }

    return D3DFMT_UNKNOWN;
}

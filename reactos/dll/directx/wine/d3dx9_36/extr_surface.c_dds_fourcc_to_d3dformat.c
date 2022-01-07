
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const DWORD ;
typedef scalar_t__ const D3DFORMAT ;


 unsigned int ARRAY_SIZE (scalar_t__ const*) ;
 scalar_t__ const D3DFMT_UNKNOWN ;


 int WARN (char*,scalar_t__ const) ;

__attribute__((used)) static D3DFORMAT dds_fourcc_to_d3dformat(DWORD fourcc)
{
    unsigned int i;
    static const DWORD known_fourcc[] = {
        129,
        128,
        130,
        133,
        140,
        139,
        138,
        137,
        136,
        132,
        135,
        142,
        131,
        134,
        141,
    };

    for (i = 0; i < ARRAY_SIZE(known_fourcc); i++)
    {
        if (known_fourcc[i] == fourcc)
            return fourcc;
    }

    WARN("Unknown FourCC %#x\n", fourcc);
    return D3DFMT_UNKNOWN;
}

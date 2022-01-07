
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FLOAT ;
typedef int D3DDECLTYPE ;
typedef int BOOL ;
 int FALSE ;
 int FIXME (char*,...) ;
 int weld_d3dcolor (void*,void*,int ) ;
 int weld_dec3n (void*,void*,int ) ;
 int weld_float1 (void*,void*,int ) ;
 int weld_float16_2 (void*,void*,int ) ;
 int weld_float16_4 (void*,void*,int ) ;
 int weld_float2 (void*,void*,int ) ;
 int weld_float3 (void*,void*,int ) ;
 int weld_float4 (void*,void*,int ) ;
 int weld_short2 (void*,void*,int ) ;
 int weld_short2n (void*,void*,int ) ;
 int weld_short4 (void*,void*,int ) ;
 int weld_short4n (void*,void*,int ) ;
 int weld_ubyte4 (void*,void*,int ) ;
 int weld_ubyte4n (void*,void*,int ) ;
 int weld_udec3 (void*,void*,int ) ;
 int weld_ushort2n (void*,void*,int ) ;
 int weld_ushort4n (void*,void*,int ) ;

__attribute__((used)) static BOOL weld_component(void *to, void *from, D3DDECLTYPE type, FLOAT epsilon)
{

    BOOL fixme_once_unused = FALSE;
    BOOL fixme_once_unknown = FALSE;

    switch (type)
    {
        case 143:
            return weld_float1(to, from, epsilon);

        case 140:
            return weld_float2(to, from, epsilon);

        case 139:
            return weld_float3(to, from, epsilon);

        case 138:
            return weld_float4(to, from, epsilon);

        case 145:
            return weld_d3dcolor(to, from, epsilon);

        case 133:
            return weld_ubyte4(to, from, epsilon);

        case 137:
            return weld_short2(to, from, epsilon);

        case 135:
            return weld_short4(to, from, epsilon);

        case 132:
            return weld_ubyte4n(to, from, epsilon);

        case 136:
            return weld_short2n(to, from, epsilon);

        case 134:
            return weld_short4n(to, from, epsilon);

        case 129:
            return weld_ushort2n(to, from, epsilon);

        case 128:
            return weld_ushort4n(to, from, epsilon);

        case 131:
            return weld_udec3(to, from, epsilon);

        case 144:
            return weld_dec3n(to, from, epsilon);

        case 142:
            return weld_float16_2(to, from, epsilon);

        case 141:
            return weld_float16_4(to, from, epsilon);

        case 130:
            if (!fixme_once_unused++)
                FIXME("D3DDECLTYPE_UNUSED welding not implemented.\n");
            break;

        default:
            if (!fixme_once_unknown++)
                FIXME("Welding of unknown declaration type %d is not implemented.\n", type);
            break;
    }

    return FALSE;
}

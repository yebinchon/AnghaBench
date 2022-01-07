
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int const D3DVSD_CONSTCOUNTMASK ;
 int const D3DVSD_CONSTCOUNTSHIFT ;
 int const D3DVSD_DATATYPEMASK ;
 int const D3DVSD_DATATYPESHIFT ;
 int const D3DVSD_EXTINFOMASK ;
 int const D3DVSD_EXTINFOSHIFT ;
 int const D3DVSD_SKIPCOUNTMASK ;
 int const D3DVSD_SKIPCOUNTSHIFT ;
 int const D3DVSD_STREAMNUMBERMASK ;
 int const D3DVSD_STREAMNUMBERSHIFT ;
 int const D3DVSD_STREAMTESSMASK ;
 int const D3DVSD_TOKENTYPEMASK ;
 int const D3DVSD_TOKENTYPESHIFT ;







 int const D3DVSD_VERTEXREGINMASK ;
 int const D3DVSD_VERTEXREGINSHIFT ;
 int const D3DVSD_VERTEXREGMASK ;
 int const D3DVSD_VERTEXREGSHIFT ;
 int TRACE (char*,int const,...) ;
 int debug_d3dvsde_register (int) ;
 int debug_d3dvsdt_type (int) ;

size_t parse_token(const DWORD* pToken)
{
    const DWORD token = *pToken;
    size_t tokenlen = 1;

    switch ((token & D3DVSD_TOKENTYPEMASK) >> D3DVSD_TOKENTYPESHIFT) {
        case 131:
            TRACE(" 0x%08x NOP()\n", token);
            break;

        case 130:
            if (token & D3DVSD_STREAMTESSMASK)
            {
                TRACE(" 0x%08x STREAM_TESS()\n", token);
            } else {
                TRACE(" 0x%08x STREAM(%u)\n", token, ((token & D3DVSD_STREAMNUMBERMASK) >> D3DVSD_STREAMNUMBERSHIFT));
            }
            break;

        case 129:
            if (token & 0x10000000)
            {
                TRACE(" 0x%08x SKIP(%u)\n", token, ((token & D3DVSD_SKIPCOUNTMASK) >> D3DVSD_SKIPCOUNTSHIFT));
            } else {
                DWORD type = ((token & D3DVSD_DATATYPEMASK) >> D3DVSD_DATATYPESHIFT);
                DWORD reg = ((token & D3DVSD_VERTEXREGMASK) >> D3DVSD_VERTEXREGSHIFT);
                TRACE(" 0x%08x REG(%s, %s)\n", token, debug_d3dvsde_register(reg), debug_d3dvsdt_type(type));
            }
            break;

        case 128:
            if (token & 0x10000000)
            {
                DWORD type = ((token & D3DVSD_DATATYPEMASK) >> D3DVSD_DATATYPESHIFT);
                DWORD reg = ((token & D3DVSD_VERTEXREGMASK) >> D3DVSD_VERTEXREGSHIFT);
                TRACE(" 0x%08x TESSUV(%s) as %s\n", token, debug_d3dvsde_register(reg), debug_d3dvsdt_type(type));
            } else {
                DWORD type = ((token & D3DVSD_DATATYPEMASK) >> D3DVSD_DATATYPESHIFT);
                DWORD regout = ((token & D3DVSD_VERTEXREGMASK) >> D3DVSD_VERTEXREGSHIFT);
                DWORD regin = ((token & D3DVSD_VERTEXREGINMASK) >> D3DVSD_VERTEXREGINSHIFT);
                TRACE(" 0x%08x TESSNORMAL(%s, %s) as %s\n", token, debug_d3dvsde_register(regin),
                        debug_d3dvsde_register(regout), debug_d3dvsdt_type(type));
            }
            break;

        case 134:
            {
                DWORD count = ((token & D3DVSD_CONSTCOUNTMASK) >> D3DVSD_CONSTCOUNTSHIFT);
                tokenlen = (4 * count) + 1;
            }
            break;

        case 132:
            {
                DWORD count = ((token & D3DVSD_CONSTCOUNTMASK) >> D3DVSD_CONSTCOUNTSHIFT);
                DWORD extinfo = ((token & D3DVSD_EXTINFOMASK) >> D3DVSD_EXTINFOSHIFT);
                TRACE(" 0x%08x EXT(%u, %u)\n", token, count, extinfo);

                tokenlen = count + 1;
            }
            break;

        case 133:
            TRACE(" 0x%08x END()\n", token);
            break;

        default:
            TRACE(" 0x%08x UNKNOWN\n", token);

    }

    return tokenlen;
}

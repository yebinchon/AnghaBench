#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int DWORD ;

/* Variables and functions */
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
#define  D3DVSD_TOKEN_CONSTMEM 134 
#define  D3DVSD_TOKEN_END 133 
#define  D3DVSD_TOKEN_EXT 132 
#define  D3DVSD_TOKEN_NOP 131 
#define  D3DVSD_TOKEN_STREAM 130 
#define  D3DVSD_TOKEN_STREAMDATA 129 
#define  D3DVSD_TOKEN_TESSELLATOR 128 
 int const D3DVSD_VERTEXREGINMASK ; 
 int const D3DVSD_VERTEXREGINSHIFT ; 
 int const D3DVSD_VERTEXREGMASK ; 
 int const D3DVSD_VERTEXREGSHIFT ; 
 int /*<<< orphan*/  FUNC0 (char*,int const,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

size_t FUNC3(const DWORD* pToken)
{
    const DWORD token = *pToken;
    size_t tokenlen = 1;

    switch ((token & D3DVSD_TOKENTYPEMASK) >> D3DVSD_TOKENTYPESHIFT) { /* maybe a macro to inverse ... */
        case D3DVSD_TOKEN_NOP:
            FUNC0(" 0x%08x NOP()\n", token);
            break;

        case D3DVSD_TOKEN_STREAM:
            if (token & D3DVSD_STREAMTESSMASK)
            {
                FUNC0(" 0x%08x STREAM_TESS()\n", token);
            } else {
                FUNC0(" 0x%08x STREAM(%u)\n", token, ((token & D3DVSD_STREAMNUMBERMASK) >> D3DVSD_STREAMNUMBERSHIFT));
            }
            break;

        case D3DVSD_TOKEN_STREAMDATA:
            if (token & 0x10000000)
            {
                FUNC0(" 0x%08x SKIP(%u)\n", token, ((token & D3DVSD_SKIPCOUNTMASK) >> D3DVSD_SKIPCOUNTSHIFT));
            } else {
                DWORD type = ((token & D3DVSD_DATATYPEMASK)  >> D3DVSD_DATATYPESHIFT);
                DWORD reg = ((token & D3DVSD_VERTEXREGMASK) >> D3DVSD_VERTEXREGSHIFT);
                FUNC0(" 0x%08x REG(%s, %s)\n", token, FUNC1(reg), FUNC2(type));
            }
            break;

        case D3DVSD_TOKEN_TESSELLATOR:
            if (token & 0x10000000)
            {
                DWORD type = ((token & D3DVSD_DATATYPEMASK)  >> D3DVSD_DATATYPESHIFT);
                DWORD reg = ((token & D3DVSD_VERTEXREGMASK) >> D3DVSD_VERTEXREGSHIFT);
                FUNC0(" 0x%08x TESSUV(%s) as %s\n", token, FUNC1(reg), FUNC2(type));
            } else {
                DWORD type = ((token & D3DVSD_DATATYPEMASK)    >> D3DVSD_DATATYPESHIFT);
                DWORD regout = ((token & D3DVSD_VERTEXREGMASK)   >> D3DVSD_VERTEXREGSHIFT);
                DWORD regin = ((token & D3DVSD_VERTEXREGINMASK) >> D3DVSD_VERTEXREGINSHIFT);
                FUNC0(" 0x%08x TESSNORMAL(%s, %s) as %s\n", token, FUNC1(regin),
                        FUNC1(regout), FUNC2(type));
            }
            break;

        case D3DVSD_TOKEN_CONSTMEM:
            {
                DWORD count = ((token & D3DVSD_CONSTCOUNTMASK)   >> D3DVSD_CONSTCOUNTSHIFT);
                tokenlen = (4 * count) + 1;
            }
            break;

        case D3DVSD_TOKEN_EXT:
            {
                DWORD count = ((token & D3DVSD_CONSTCOUNTMASK) >> D3DVSD_CONSTCOUNTSHIFT);
                DWORD extinfo = ((token & D3DVSD_EXTINFOMASK)    >> D3DVSD_EXTINFOSHIFT);
                FUNC0(" 0x%08x EXT(%u, %u)\n", token, count, extinfo);
                /* todo ... print extension */
                tokenlen = count + 1;
            }
            break;

        case D3DVSD_TOKEN_END:
            FUNC0(" 0x%08x END()\n", token);
            break;

        default:
            FUNC0(" 0x%08x UNKNOWN\n", token);
            /* arg error */
    }

    return tokenlen;
}
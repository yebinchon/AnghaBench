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
typedef  int /*<<< orphan*/  FLOAT ;
typedef  int D3DDECLTYPE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
#define  D3DDECLTYPE_D3DCOLOR 145 
#define  D3DDECLTYPE_DEC3N 144 
#define  D3DDECLTYPE_FLOAT1 143 
#define  D3DDECLTYPE_FLOAT16_2 142 
#define  D3DDECLTYPE_FLOAT16_4 141 
#define  D3DDECLTYPE_FLOAT2 140 
#define  D3DDECLTYPE_FLOAT3 139 
#define  D3DDECLTYPE_FLOAT4 138 
#define  D3DDECLTYPE_SHORT2 137 
#define  D3DDECLTYPE_SHORT2N 136 
#define  D3DDECLTYPE_SHORT4 135 
#define  D3DDECLTYPE_SHORT4N 134 
#define  D3DDECLTYPE_UBYTE4 133 
#define  D3DDECLTYPE_UBYTE4N 132 
#define  D3DDECLTYPE_UDEC3 131 
#define  D3DDECLTYPE_UNUSED 130 
#define  D3DDECLTYPE_USHORT2N 129 
#define  D3DDECLTYPE_USHORT4N 128 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (void*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC18(void *to, void *from, D3DDECLTYPE type, FLOAT epsilon)
{
    /* Quiet FIXMEs as this is in a loop with potentially thousand of iterations. */
    BOOL fixme_once_unused = FALSE;
    BOOL fixme_once_unknown = FALSE;

    switch (type)
    {
        case D3DDECLTYPE_FLOAT1:
            return FUNC3(to, from, epsilon);

        case D3DDECLTYPE_FLOAT2:
            return FUNC6(to, from, epsilon);

        case D3DDECLTYPE_FLOAT3:
            return FUNC7(to, from, epsilon);

        case D3DDECLTYPE_FLOAT4:
            return FUNC8(to, from, epsilon);

        case D3DDECLTYPE_D3DCOLOR:
            return FUNC1(to, from, epsilon);

        case D3DDECLTYPE_UBYTE4:
            return FUNC13(to, from, epsilon);

        case D3DDECLTYPE_SHORT2:
            return FUNC9(to, from, epsilon);

        case D3DDECLTYPE_SHORT4:
            return FUNC11(to, from, epsilon);

        case D3DDECLTYPE_UBYTE4N:
            return FUNC14(to, from, epsilon);

        case D3DDECLTYPE_SHORT2N:
            return FUNC10(to, from, epsilon);

        case D3DDECLTYPE_SHORT4N:
            return FUNC12(to, from, epsilon);

        case D3DDECLTYPE_USHORT2N:
            return FUNC16(to, from, epsilon);

        case D3DDECLTYPE_USHORT4N:
            return FUNC17(to, from, epsilon);

        case D3DDECLTYPE_UDEC3:
            return FUNC15(to, from, epsilon);

        case D3DDECLTYPE_DEC3N:
            return FUNC2(to, from, epsilon);

        case D3DDECLTYPE_FLOAT16_2:
            return FUNC4(to, from, epsilon);

        case D3DDECLTYPE_FLOAT16_4:
            return FUNC5(to, from, epsilon);

        case D3DDECLTYPE_UNUSED:
            if (!fixme_once_unused++)
                FUNC0("D3DDECLTYPE_UNUSED welding not implemented.\n");
            break;

        default:
            if (!fixme_once_unknown++)
                FUNC0("Welding of unknown declaration type %d is not implemented.\n", type);
            break;
    }

    return FALSE;
}
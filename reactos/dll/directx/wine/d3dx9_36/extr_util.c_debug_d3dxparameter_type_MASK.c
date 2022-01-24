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
typedef  int D3DXPARAMETER_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  D3DXPT_BOOL ; 
 int /*<<< orphan*/  D3DXPT_FLOAT ; 
 int /*<<< orphan*/  D3DXPT_INT ; 
 int /*<<< orphan*/  D3DXPT_PIXELFRAGMENT ; 
 int /*<<< orphan*/  D3DXPT_PIXELSHADER ; 
 int /*<<< orphan*/  D3DXPT_SAMPLER ; 
 int /*<<< orphan*/  D3DXPT_SAMPLER1D ; 
 int /*<<< orphan*/  D3DXPT_SAMPLER2D ; 
 int /*<<< orphan*/  D3DXPT_SAMPLER3D ; 
 int /*<<< orphan*/  D3DXPT_SAMPLERCUBE ; 
 int /*<<< orphan*/  D3DXPT_STRING ; 
 int /*<<< orphan*/  D3DXPT_TEXTURE ; 
 int /*<<< orphan*/  D3DXPT_TEXTURE1D ; 
 int /*<<< orphan*/  D3DXPT_TEXTURE2D ; 
 int /*<<< orphan*/  D3DXPT_TEXTURE3D ; 
 int /*<<< orphan*/  D3DXPT_TEXTURECUBE ; 
 int /*<<< orphan*/  D3DXPT_UNSUPPORTED ; 
 int /*<<< orphan*/  D3DXPT_VERTEXFRAGMENT ; 
 int /*<<< orphan*/  D3DXPT_VERTEXSHADER ; 
 int /*<<< orphan*/  D3DXPT_VOID ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

const char *FUNC2(D3DXPARAMETER_TYPE t)
{
    switch (t)
    {
        FUNC1(D3DXPT_VOID);
        FUNC1(D3DXPT_BOOL);
        FUNC1(D3DXPT_INT);
        FUNC1(D3DXPT_FLOAT);
        FUNC1(D3DXPT_STRING);
        FUNC1(D3DXPT_TEXTURE);
        FUNC1(D3DXPT_TEXTURE1D);
        FUNC1(D3DXPT_TEXTURE2D);
        FUNC1(D3DXPT_TEXTURE3D);
        FUNC1(D3DXPT_TEXTURECUBE);
        FUNC1(D3DXPT_SAMPLER);
        FUNC1(D3DXPT_SAMPLER1D);
        FUNC1(D3DXPT_SAMPLER2D);
        FUNC1(D3DXPT_SAMPLER3D);
        FUNC1(D3DXPT_SAMPLERCUBE);
        FUNC1(D3DXPT_PIXELSHADER);
        FUNC1(D3DXPT_VERTEXSHADER);
        FUNC1(D3DXPT_PIXELFRAGMENT);
        FUNC1(D3DXPT_VERTEXFRAGMENT);
        FUNC1(D3DXPT_UNSUPPORTED);
        default:
            FUNC0("Unrecognized D3DXPARAMETER_TYP %#x.\n", t);
            return "unrecognized";
    }
}
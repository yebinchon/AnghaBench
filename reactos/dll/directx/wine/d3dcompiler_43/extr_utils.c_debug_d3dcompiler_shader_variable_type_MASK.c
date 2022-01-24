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
typedef  int D3D_SHADER_VARIABLE_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  D3D_SVT_APPEND_STRUCTURED_BUFFER ; 
 int /*<<< orphan*/  D3D_SVT_BLEND ; 
 int /*<<< orphan*/  D3D_SVT_BOOL ; 
 int /*<<< orphan*/  D3D_SVT_BUFFER ; 
 int /*<<< orphan*/  D3D_SVT_BYTEADDRESS_BUFFER ; 
 int /*<<< orphan*/  D3D_SVT_CBUFFER ; 
 int /*<<< orphan*/  D3D_SVT_COMPUTESHADER ; 
 int /*<<< orphan*/  D3D_SVT_CONSUME_STRUCTURED_BUFFER ; 
 int /*<<< orphan*/  D3D_SVT_DEPTHSTENCIL ; 
 int /*<<< orphan*/  D3D_SVT_DEPTHSTENCILVIEW ; 
 int /*<<< orphan*/  D3D_SVT_DOMAINSHADER ; 
 int /*<<< orphan*/  D3D_SVT_DOUBLE ; 
 int /*<<< orphan*/  D3D_SVT_FLOAT ; 
 int /*<<< orphan*/  D3D_SVT_GEOMETRYSHADER ; 
 int /*<<< orphan*/  D3D_SVT_HULLSHADER ; 
 int /*<<< orphan*/  D3D_SVT_INT ; 
 int /*<<< orphan*/  D3D_SVT_INTERFACE_POINTER ; 
 int /*<<< orphan*/  D3D_SVT_PIXELSHADER ; 
 int /*<<< orphan*/  D3D_SVT_RASTERIZER ; 
 int /*<<< orphan*/  D3D_SVT_RENDERTARGETVIEW ; 
 int /*<<< orphan*/  D3D_SVT_RWBUFFER ; 
 int /*<<< orphan*/  D3D_SVT_RWBYTEADDRESS_BUFFER ; 
 int /*<<< orphan*/  D3D_SVT_RWSTRUCTURED_BUFFER ; 
 int /*<<< orphan*/  D3D_SVT_RWTEXTURE1D ; 
 int /*<<< orphan*/  D3D_SVT_RWTEXTURE1DARRAY ; 
 int /*<<< orphan*/  D3D_SVT_RWTEXTURE2D ; 
 int /*<<< orphan*/  D3D_SVT_RWTEXTURE2DARRAY ; 
 int /*<<< orphan*/  D3D_SVT_RWTEXTURE3D ; 
 int /*<<< orphan*/  D3D_SVT_SAMPLER ; 
 int /*<<< orphan*/  D3D_SVT_STRING ; 
 int /*<<< orphan*/  D3D_SVT_STRUCTURED_BUFFER ; 
 int /*<<< orphan*/  D3D_SVT_TBUFFER ; 
 int /*<<< orphan*/  D3D_SVT_TEXTURE ; 
 int /*<<< orphan*/  D3D_SVT_TEXTURE1D ; 
 int /*<<< orphan*/  D3D_SVT_TEXTURE1DARRAY ; 
 int /*<<< orphan*/  D3D_SVT_TEXTURE2D ; 
 int /*<<< orphan*/  D3D_SVT_TEXTURE2DARRAY ; 
 int /*<<< orphan*/  D3D_SVT_TEXTURE2DMS ; 
 int /*<<< orphan*/  D3D_SVT_TEXTURE2DMSARRAY ; 
 int /*<<< orphan*/  D3D_SVT_TEXTURE3D ; 
 int /*<<< orphan*/  D3D_SVT_TEXTURECUBE ; 
 int /*<<< orphan*/  D3D_SVT_TEXTURECUBEARRAY ; 
 int /*<<< orphan*/  D3D_SVT_UINT ; 
 int /*<<< orphan*/  D3D_SVT_UINT8 ; 
 int /*<<< orphan*/  D3D_SVT_VERTEXSHADER ; 
 int /*<<< orphan*/  D3D_SVT_VOID ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

const char *FUNC2(D3D_SHADER_VARIABLE_TYPE t)
{
    switch (t)
    {
        FUNC1(D3D_SVT_VOID);
        FUNC1(D3D_SVT_BOOL);
        FUNC1(D3D_SVT_INT);
        FUNC1(D3D_SVT_FLOAT);
        FUNC1(D3D_SVT_STRING);
        FUNC1(D3D_SVT_TEXTURE);
        FUNC1(D3D_SVT_TEXTURE1D);
        FUNC1(D3D_SVT_TEXTURE2D);
        FUNC1(D3D_SVT_TEXTURE3D);
        FUNC1(D3D_SVT_TEXTURECUBE);
        FUNC1(D3D_SVT_SAMPLER);
        FUNC1(D3D_SVT_PIXELSHADER);
        FUNC1(D3D_SVT_VERTEXSHADER);
        FUNC1(D3D_SVT_UINT);
        FUNC1(D3D_SVT_UINT8);
        FUNC1(D3D_SVT_GEOMETRYSHADER);
        FUNC1(D3D_SVT_RASTERIZER);
        FUNC1(D3D_SVT_DEPTHSTENCIL);
        FUNC1(D3D_SVT_BLEND);
        FUNC1(D3D_SVT_BUFFER);
        FUNC1(D3D_SVT_CBUFFER);
        FUNC1(D3D_SVT_TBUFFER);
        FUNC1(D3D_SVT_TEXTURE1DARRAY);
        FUNC1(D3D_SVT_TEXTURE2DARRAY);
        FUNC1(D3D_SVT_RENDERTARGETVIEW);
        FUNC1(D3D_SVT_DEPTHSTENCILVIEW);
        FUNC1(D3D_SVT_TEXTURE2DMS);
        FUNC1(D3D_SVT_TEXTURE2DMSARRAY);
        FUNC1(D3D_SVT_TEXTURECUBEARRAY);
        FUNC1(D3D_SVT_HULLSHADER);
        FUNC1(D3D_SVT_DOMAINSHADER);
        FUNC1(D3D_SVT_INTERFACE_POINTER);
        FUNC1(D3D_SVT_COMPUTESHADER);
        FUNC1(D3D_SVT_DOUBLE);
        FUNC1(D3D_SVT_RWTEXTURE1D);
        FUNC1(D3D_SVT_RWTEXTURE1DARRAY);
        FUNC1(D3D_SVT_RWTEXTURE2D);
        FUNC1(D3D_SVT_RWTEXTURE2DARRAY);
        FUNC1(D3D_SVT_RWTEXTURE3D);
        FUNC1(D3D_SVT_RWBUFFER);
        FUNC1(D3D_SVT_BYTEADDRESS_BUFFER);
        FUNC1(D3D_SVT_RWBYTEADDRESS_BUFFER);
        FUNC1(D3D_SVT_STRUCTURED_BUFFER);
        FUNC1(D3D_SVT_RWSTRUCTURED_BUFFER);
        FUNC1(D3D_SVT_APPEND_STRUCTURED_BUFFER);
        FUNC1(D3D_SVT_CONSUME_STRUCTURED_BUFFER);
        default:
            FUNC0("Unrecognized D3D_SHADER_VARIABLE_TYPE %#x.\n", t);
            return "unrecognized";
    }
}
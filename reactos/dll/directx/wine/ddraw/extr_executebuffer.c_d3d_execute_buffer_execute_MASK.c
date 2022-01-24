#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_9__ ;
typedef  struct TYPE_31__   TYPE_8__ ;
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_16__ ;
typedef  struct TYPE_22__   TYPE_15__ ;
typedef  struct TYPE_21__   TYPE_14__ ;
typedef  struct TYPE_20__   TYPE_13__ ;
typedef  struct TYPE_19__   TYPE_12__ ;
typedef  struct TYPE_18__   TYPE_11__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
struct wined3d_map_desc {unsigned int* data; } ;
struct wined3d_buffer_desc {unsigned int byte_width; int usage; int access; int /*<<< orphan*/  structure_byte_stride; int /*<<< orphan*/  misc_flags; int /*<<< orphan*/  bind_flags; } ;
struct wined3d_buffer {int dummy; } ;
struct wined3d_box {unsigned int left; unsigned int right; int bottom; int back; int /*<<< orphan*/  front; int /*<<< orphan*/  top; int /*<<< orphan*/  member_0; } ;
struct ddraw_surface {int /*<<< orphan*/  IDirect3DTexture2_iface; } ;
struct d3d_viewport {struct d3d_device* active_device; } ;
struct TYPE_32__ {int dwStatus; } ;
struct TYPE_23__ {int dwInstructionOffset; TYPE_9__ dsStatus; } ;
struct TYPE_24__ {scalar_t__ lpData; } ;
struct d3d_execute_buffer {unsigned int index_pos; unsigned int index_size; int src_vertex_pos; TYPE_16__ data; struct wined3d_buffer* src_vertex_buffer; struct wined3d_buffer* dst_vertex_buffer; struct wined3d_buffer* index_buffer; TYPE_1__ desc; } ;
struct d3d_device {int world; int view; int proj; int /*<<< orphan*/  handle_table; int /*<<< orphan*/  wined3d_device; int /*<<< orphan*/  ddraw; int /*<<< orphan*/  IDirect3DDevice3_iface; } ;
typedef  unsigned int WORD ;
struct TYPE_31__ {unsigned int hDestTexture; unsigned int hSrcTexture; } ;
struct TYPE_27__ {unsigned int v1; } ;
struct TYPE_26__ {unsigned int v2; } ;
struct TYPE_25__ {unsigned int v3; } ;
struct TYPE_30__ {int wFlags; TYPE_4__ u1; TYPE_3__ u2; TYPE_2__ u3; } ;
struct TYPE_29__ {int* dwArg; } ;
struct TYPE_28__ {int /*<<< orphan*/  drstRenderStateType; int /*<<< orphan*/  dlstLightStateType; int /*<<< orphan*/  dtstTransformStateType; } ;
struct TYPE_22__ {int dwMask; int dwValue; unsigned int dwOffset; int /*<<< orphan*/  bNegate; } ;
struct TYPE_21__ {unsigned int wCount; unsigned int bSize; int bOpcode; } ;
struct TYPE_20__ {int /*<<< orphan*/  hSrcMatrix2; int /*<<< orphan*/  hSrcMatrix1; int /*<<< orphan*/  hDestMatrix; } ;
struct TYPE_19__ {int /*<<< orphan*/  wCount; int /*<<< orphan*/  wFirst; } ;
struct TYPE_18__ {int dwFlags; int wStart; int wDest; int dwCount; } ;
struct TYPE_17__ {TYPE_6__ u2; TYPE_5__ u1; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  D3DVERTEX ;
typedef  TYPE_7__ D3DTRIANGLE ;
typedef  int /*<<< orphan*/  D3DTLVERTEX ;
typedef  TYPE_8__ D3DTEXTURELOAD ;
typedef  TYPE_9__ D3DSTATUS ;
typedef  TYPE_10__ D3DSTATE ;
typedef  TYPE_11__ D3DPROCESSVERTICES ;
typedef  TYPE_12__ D3DPOINT ;
typedef  TYPE_13__ D3DMATRIXMULTIPLY ;
typedef  int /*<<< orphan*/  D3DMATRIX ;
typedef  TYPE_14__ D3DINSTRUCTION ;
typedef  TYPE_15__ D3DBRANCH ;
typedef  unsigned int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  D3DFVF_LVERTEX ; 
 int /*<<< orphan*/  D3DFVF_TLVERTEX ; 
 int /*<<< orphan*/  D3DFVF_VERTEX ; 
#define  D3DOP_BRANCHFORWARD 144 
#define  D3DOP_EXIT 143 
#define  D3DOP_LINE 142 
#define  D3DOP_MATRIXLOAD 141 
#define  D3DOP_MATRIXMULTIPLY 140 
#define  D3DOP_POINT 139 
#define  D3DOP_PROCESSVERTICES 138 
#define  D3DOP_SETSTATUS 137 
#define  D3DOP_SPAN 136 
#define  D3DOP_STATELIGHT 135 
#define  D3DOP_STATERENDER 134 
#define  D3DOP_STATETRANSFORM 133 
#define  D3DOP_TEXTURELOAD 132 
#define  D3DOP_TRIANGLE 131 
#define  D3DPROCESSVERTICES_COPY 130 
 int D3DPROCESSVERTICES_NOCOLOR ; 
 int D3DPROCESSVERTICES_OPMASK ; 
#define  D3DPROCESSVERTICES_TRANSFORM 129 
#define  D3DPROCESSVERTICES_TRANSFORMLIGHT 128 
 int D3DPROCESSVERTICES_UPDATEEXTENTS ; 
 int /*<<< orphan*/  D3DTRANSFORMSTATE_PROJECTION ; 
 int /*<<< orphan*/  D3DTRANSFORMSTATE_VIEW ; 
 int /*<<< orphan*/  D3DTRANSFORMSTATE_WORLD ; 
 int D3DTRIFLAG_EDGEENABLE1 ; 
 int D3DTRIFLAG_EDGEENABLE2 ; 
 int D3DTRIFLAG_EVEN ; 
 int D3DTRIFLAG_ODD ; 
 int D3DTRIFLAG_START ; 
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  DDERR_INVALIDPARAMS ; 
 int /*<<< orphan*/  DDRAW_HANDLE_MATRIX ; 
 int /*<<< orphan*/  DDRAW_HANDLE_SURFACE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  WINED3DFMT_R16_UINT ; 
 int WINED3DUSAGE_DYNAMIC ; 
 int WINED3DUSAGE_STATICDECL ; 
 int WINED3DUSAGE_WRITEONLY ; 
 int /*<<< orphan*/  WINED3D_BIND_INDEX_BUFFER ; 
 int WINED3D_MAP_DISCARD ; 
 int WINED3D_MAP_NOOVERWRITE ; 
 int WINED3D_MAP_WRITE ; 
 int /*<<< orphan*/  WINED3D_PT_LINELIST ; 
 int /*<<< orphan*/  WINED3D_PT_POINTLIST ; 
 int /*<<< orphan*/  WINED3D_PT_TRIANGLELIST ; 
 int WINED3D_RESOURCE_ACCESS_GPU ; 
 int WINED3D_RESOURCE_ACCESS_MAP_R ; 
 int WINED3D_RESOURCE_ACCESS_MAP_W ; 
 int /*<<< orphan*/  WINED3D_RS_LIGHTING ; 
 int /*<<< orphan*/  FUNC10 (TYPE_16__*) ; 
 int /*<<< orphan*/  ddraw ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ddraw_null_wined3d_parent_ops ; 
 unsigned int FUNC13 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct d3d_viewport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct wined3d_buffer_desc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct wined3d_buffer**) ; 
 int /*<<< orphan*/  FUNC17 (struct wined3d_buffer*) ; 
 int /*<<< orphan*/  FUNC18 (struct wined3d_buffer*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wined3d_box*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int,int,int,struct wined3d_buffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,struct wined3d_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wined3d_buffer*,int,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wined3d_map_desc*,struct wined3d_box*,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

HRESULT FUNC30(struct d3d_execute_buffer *buffer,
        struct d3d_device *device, struct d3d_viewport *viewport)
{
    DWORD is = buffer->data.dwInstructionOffset;
    char *instr = (char *)buffer->desc.lpData + is;
    unsigned int i, primitive_size;
    struct wined3d_map_desc map_desc;
    struct wined3d_box box = {0};
    HRESULT hr;

    if (viewport->active_device != device)
    {
        FUNC9("Viewport %p active device is %p.\n",
                viewport, viewport->active_device);
        return DDERR_INVALIDPARAMS;
    }

    /* Activate the viewport */
    FUNC15(viewport, FALSE);

    FUNC7("ExecuteData :\n");
    if (FUNC8(ddraw))
        FUNC10(&(buffer->data));

    for (;;)
    {
        D3DINSTRUCTION *current = (D3DINSTRUCTION *)instr;
        BYTE size;
        WORD count;

        count = current->wCount;
        size = current->bSize;
        instr += sizeof(*current);
        primitive_size = 0;

        switch (current->bOpcode)
        {
            case D3DOP_POINT:
            {
                const D3DPOINT *p = (D3DPOINT *)instr;
                FUNC24(device->wined3d_device, WINED3D_PT_POINTLIST, 0);
                FUNC26(device->wined3d_device, 0,
                        buffer->dst_vertex_buffer, 0, sizeof(D3DTLVERTEX));
                FUNC27(device->wined3d_device,
                        FUNC11(device->ddraw, D3DFVF_TLVERTEX));

                for (i = 0; i < count; ++i)
                    FUNC21(device->wined3d_device, p[i].wFirst, p[i].wCount);

                instr += sizeof(*p) * count;
                break;
            }

            case D3DOP_LINE:
                primitive_size = 2;
                FUNC24(device->wined3d_device, WINED3D_PT_LINELIST, 0);
                /* Drop through. */
            case D3DOP_TRIANGLE:
            {
                WORD *indices;
                unsigned int index_pos = buffer->index_pos, index_count;
                FUNC7("TRIANGLE         (%d)\n", count);

                if (!count)
                    break;

                if (!primitive_size)
                {
                    FUNC24(device->wined3d_device, WINED3D_PT_TRIANGLELIST, 0);
                    primitive_size = 3;
                }

                index_count = count * primitive_size;

                if (buffer->index_size < index_count)
                {
                    unsigned int new_size = FUNC13(buffer->index_size * 2, index_count);
                    struct wined3d_buffer *new_buffer;
                    struct wined3d_buffer_desc desc;

                    desc.byte_width = new_size * sizeof(*indices);
                    desc.usage = WINED3DUSAGE_DYNAMIC | WINED3DUSAGE_WRITEONLY | WINED3DUSAGE_STATICDECL;
                    desc.bind_flags = WINED3D_BIND_INDEX_BUFFER;
                    desc.access = WINED3D_RESOURCE_ACCESS_GPU
                            | WINED3D_RESOURCE_ACCESS_MAP_R | WINED3D_RESOURCE_ACCESS_MAP_W;
                    desc.misc_flags = 0;
                    desc.structure_byte_stride = 0;

                    if (FUNC1(hr = FUNC16(device->wined3d_device, &desc,
                            NULL, NULL, &ddraw_null_wined3d_parent_ops, &new_buffer)))
                        return hr;

                    buffer->index_size = new_size;
                    if (buffer->index_buffer)
                        FUNC17(buffer->index_buffer);
                    buffer->index_buffer = new_buffer;
                    index_pos = 0;
                }
                else if (buffer->index_size - index_count < index_pos)
                {
                    index_pos = 0;
                }

                box.left = index_pos * sizeof(*indices);
                box.right = (index_pos + index_count) * sizeof(*indices);
                if (FUNC1(hr = FUNC28(FUNC18(buffer->index_buffer), 0, &map_desc,
                        &box, WINED3D_MAP_WRITE | (index_pos ? WINED3D_MAP_NOOVERWRITE : WINED3D_MAP_DISCARD))))
                    return hr;
                indices = map_desc.data;

                for (i = 0; i < count; ++i)
                {
                    D3DTRIANGLE *ci = (D3DTRIANGLE *)instr;
                    FUNC7("  v1: %d  v2: %d  v3: %d\n",ci->u1.v1, ci->u2.v2, ci->u3.v3);
                    FUNC7("  Flags : ");
                    if (FUNC8(ddraw))
                    {
                        /* Wireframe */
                        if (ci->wFlags & D3DTRIFLAG_EDGEENABLE1)
                            FUNC7("EDGEENABLE1 ");
                        if (ci->wFlags & D3DTRIFLAG_EDGEENABLE2)
                            FUNC7("EDGEENABLE2 ");
                        if (ci->wFlags & D3DTRIFLAG_EDGEENABLE1)
                            FUNC7("EDGEENABLE3 ");
                        /* Strips / Fans */
                        if (ci->wFlags == D3DTRIFLAG_EVEN)
                            FUNC7("EVEN ");
                        if (ci->wFlags == D3DTRIFLAG_ODD)
                            FUNC7("ODD ");
                        if (ci->wFlags == D3DTRIFLAG_START)
                            FUNC7("START ");
                        if ((ci->wFlags > 0) && (ci->wFlags < 30))
                            FUNC7("STARTFLAT(%u) ", ci->wFlags);
                        FUNC7("\n");
                    }

                    switch (primitive_size)
                    {
                        case 3:
                            indices[(i * primitive_size) + 2] = ci->u3.v3;
                            /* Drop through. */
                        case 2:
                            indices[(i * primitive_size) + 1] = ci->u2.v2;
                            indices[(i * primitive_size)    ] = ci->u1.v1;
                    }
                    instr += size;
                }

                FUNC29(FUNC18(buffer->index_buffer), 0);

                FUNC26(device->wined3d_device, 0,
                        buffer->dst_vertex_buffer, 0, sizeof(D3DTLVERTEX));
                FUNC27(device->wined3d_device,
                        FUNC11(device->ddraw, D3DFVF_TLVERTEX));
                FUNC23(device->wined3d_device, buffer->index_buffer, WINED3DFMT_R16_UINT, 0);
                FUNC20(device->wined3d_device, index_pos, index_count);

                buffer->index_pos = index_pos + index_count;
                break;
            }

            case D3DOP_MATRIXLOAD:
                FUNC9("MATRIXLOAD-s     (%u)\n", count);
                instr += count * size;
                break;

            case D3DOP_MATRIXMULTIPLY:
                FUNC7("MATRIXMULTIPLY   (%d)\n", count);
                for (i = 0; i < count; ++i)
                {
                    D3DMATRIXMULTIPLY *ci = (D3DMATRIXMULTIPLY *)instr;
                    D3DMATRIX *a, *b, *c;

                    a = FUNC12(&device->handle_table, ci->hDestMatrix - 1, DDRAW_HANDLE_MATRIX);
                    b = FUNC12(&device->handle_table, ci->hSrcMatrix1 - 1, DDRAW_HANDLE_MATRIX);
                    c = FUNC12(&device->handle_table, ci->hSrcMatrix2 - 1, DDRAW_HANDLE_MATRIX);

                    if (!a || !b || !c)
                    {
                        FUNC0("Invalid matrix handle (a %#x -> %p, b %#x -> %p, c %#x -> %p).\n",
                                ci->hDestMatrix, a, ci->hSrcMatrix1, b, ci->hSrcMatrix2, c);
                    }
                    else
                    {
                        FUNC7("dst %p, src1 %p, src2 %p.\n", a, b, c);
                        FUNC14(a, c, b);
                    }

                    instr += size;
                }
                break;

            case D3DOP_STATETRANSFORM:
                FUNC7("STATETRANSFORM   (%d)\n", count);
                for (i = 0; i < count; ++i)
                {
                    D3DSTATE *ci = (D3DSTATE *)instr;
                    D3DMATRIX *m;

                    m = FUNC12(&device->handle_table, ci->u2.dwArg[0] - 1, DDRAW_HANDLE_MATRIX);
                    if (!m)
                    {
                        FUNC0("Invalid matrix handle %#x.\n", ci->u2.dwArg[0]);
                    }
                    else
                    {
                        if (ci->u1.dtstTransformStateType == D3DTRANSFORMSTATE_WORLD)
                            device->world = ci->u2.dwArg[0];
                        if (ci->u1.dtstTransformStateType == D3DTRANSFORMSTATE_VIEW)
                            device->view = ci->u2.dwArg[0];
                        if (ci->u1.dtstTransformStateType == D3DTRANSFORMSTATE_PROJECTION)
                            device->proj = ci->u2.dwArg[0];
                        FUNC5(&device->IDirect3DDevice3_iface,
                                ci->u1.dtstTransformStateType, m);
                    }

                    instr += size;
                }
                break;

            case D3DOP_STATELIGHT:
                FUNC7("STATELIGHT       (%d)\n", count);
                for (i = 0; i < count; ++i)
                {
                    D3DSTATE *ci = (D3DSTATE *)instr;

                    if (FUNC1(FUNC3(&device->IDirect3DDevice3_iface,
                            ci->u1.dlstLightStateType, ci->u2.dwArg[0])))
                        FUNC9("Failed to set light state.\n");

                    instr += size;
                }
                break;

            case D3DOP_STATERENDER:
                FUNC7("STATERENDER      (%d)\n", count);
                for (i = 0; i < count; ++i)
                {
                    D3DSTATE *ci = (D3DSTATE *)instr;

                    if (FUNC1(FUNC4(&device->IDirect3DDevice3_iface,
                            ci->u1.drstRenderStateType, ci->u2.dwArg[0])))
                        FUNC9("Failed to set render state.\n");

                    instr += size;
                }
                break;

            case D3DOP_PROCESSVERTICES:
                FUNC7("PROCESSVERTICES  (%d)\n", count);

                for (i = 0; i < count; ++i)
                {
                    D3DPROCESSVERTICES *ci = (D3DPROCESSVERTICES *)instr;
                    DWORD op = ci->dwFlags & D3DPROCESSVERTICES_OPMASK;

                    FUNC7("  start %u, dest %u, count %u, flags %#x.\n",
                            ci->wStart, ci->wDest, ci->dwCount, ci->dwFlags);

                    if (ci->dwFlags & D3DPROCESSVERTICES_UPDATEEXTENTS)
                    {
                        static int once;
                        if (!once++) FUNC2("D3DPROCESSVERTICES_UPDATEEXTENTS not implemented.\n");
                    }
                    if (ci->dwFlags & D3DPROCESSVERTICES_NOCOLOR)
                        FUNC2("D3DPROCESSVERTICES_NOCOLOR not implemented.\n");

                    switch (op)
                    {
                        case D3DPROCESSVERTICES_TRANSFORMLIGHT:
                        case D3DPROCESSVERTICES_TRANSFORM:
                            FUNC26(device->wined3d_device, 0,
                                    buffer->src_vertex_buffer, buffer->src_vertex_pos, sizeof(D3DVERTEX));
                            if (op == D3DPROCESSVERTICES_TRANSFORMLIGHT)
                            {
                                FUNC27(device->wined3d_device,
                                        FUNC11(device->ddraw, D3DFVF_VERTEX));
                                FUNC25(device->wined3d_device,
                                        WINED3D_RS_LIGHTING, TRUE);
                            }
                            else
                            {
                                FUNC27(device->wined3d_device,
                                        FUNC11(device->ddraw, D3DFVF_LVERTEX));
                                FUNC25(device->wined3d_device,
                                        WINED3D_RS_LIGHTING, FALSE);
                            }

                            FUNC22(device->wined3d_device, ci->wStart, ci->wDest,
                                    ci->dwCount, buffer->dst_vertex_buffer, NULL, 0, D3DFVF_TLVERTEX);
                            break;

                        case D3DPROCESSVERTICES_COPY:
                            box.left = (buffer->src_vertex_pos + ci->wStart) * sizeof(D3DTLVERTEX);
                            box.right = box.left + ci->dwCount * sizeof(D3DTLVERTEX);
                            box.top = box.front = 0;
                            box.bottom = box.back = 1;
                            FUNC19(device->wined3d_device,
                                    FUNC18(buffer->dst_vertex_buffer), 0,
                                    ci->wDest * sizeof(D3DTLVERTEX), 0, 0,
                                    FUNC18(buffer->src_vertex_buffer), 0, &box);
                            break;

                        default:
                            FUNC2("Unhandled vertex processing op %#x.\n", op);
                            break;
                    }

                    instr += size;
                }
                break;

            case D3DOP_TEXTURELOAD:
                FUNC7("TEXTURELOAD    (%u)\n", count);

                for (i = 0; i < count; ++i)
                {
                    D3DTEXTURELOAD *ci = (D3DTEXTURELOAD *)instr;
                    struct ddraw_surface *dst, *src;

                    instr += size;

                    if (!(dst = FUNC12(&device->handle_table,
                            ci->hDestTexture - 1, DDRAW_HANDLE_SURFACE)))
                    {
                        FUNC9("Invalid destination texture handle %#x.\n", ci->hDestTexture);
                        continue;
                    }
                    if (!(src = FUNC12(&device->handle_table,
                            ci->hSrcTexture - 1, DDRAW_HANDLE_SURFACE)))
                    {
                        FUNC9("Invalid source texture handle %#x.\n", ci->hSrcTexture);
                        continue;
                    }

                    FUNC6(&dst->IDirect3DTexture2_iface, &src->IDirect3DTexture2_iface);
                }
                break;

            case D3DOP_EXIT:
                FUNC7("EXIT             (%u)\n", count);
                instr += size;
                goto end_of_buffer;

            case D3DOP_BRANCHFORWARD:
                FUNC7("BRANCHFORWARD    (%d)\n", count);
                for (i = 0; i < count; ++i)
                {
                    D3DBRANCH *ci = (D3DBRANCH *)instr;

                    if ((buffer->data.dsStatus.dwStatus & ci->dwMask) == ci->dwValue)
                    {
                        if (!ci->bNegate)
                        {
                            FUNC7(" Branch to %d\n", ci->dwOffset);
                            if (ci->dwOffset) {
                                instr = (char*)current + ci->dwOffset;
                                break;
                            }
                        }
                    }
                    else
                    {
                        if (ci->bNegate)
                        {
                            FUNC7(" Branch to %d\n", ci->dwOffset);
                            if (ci->dwOffset) {
                                instr = (char*)current + ci->dwOffset;
                                break;
                            }
                        }
                    }

                    instr += size;
                }
                break;

            case D3DOP_SPAN:
                FUNC9("SPAN-s           (%u)\n", count);
                instr += count * size;
                break;

            case D3DOP_SETSTATUS:
                FUNC7("SETSTATUS        (%d)\n", count);
                for (i = 0; i < count; ++i)
                {
                    buffer->data.dsStatus = *(D3DSTATUS *)instr;
                    instr += size;
                }
                break;

            default:
                FUNC0("Unhandled OpCode %#x.\n",current->bOpcode);
                instr += count * size;
                break;
        }
    }

end_of_buffer:
    return D3D_OK;
}
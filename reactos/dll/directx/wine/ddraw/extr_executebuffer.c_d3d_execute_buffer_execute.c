
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_16__ ;
typedef struct TYPE_22__ TYPE_15__ ;
typedef struct TYPE_21__ TYPE_14__ ;
typedef struct TYPE_20__ TYPE_13__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct wined3d_map_desc {unsigned int* data; } ;
struct wined3d_buffer_desc {unsigned int byte_width; int usage; int access; int structure_byte_stride; int misc_flags; int bind_flags; } ;
struct wined3d_buffer {int dummy; } ;
struct wined3d_box {unsigned int left; unsigned int right; int bottom; int back; int front; int top; int member_0; } ;
struct ddraw_surface {int IDirect3DTexture2_iface; } ;
struct d3d_viewport {struct d3d_device* active_device; } ;
struct TYPE_32__ {int dwStatus; } ;
struct TYPE_23__ {int dwInstructionOffset; TYPE_9__ dsStatus; } ;
struct TYPE_24__ {scalar_t__ lpData; } ;
struct d3d_execute_buffer {unsigned int index_pos; unsigned int index_size; int src_vertex_pos; TYPE_16__ data; struct wined3d_buffer* src_vertex_buffer; struct wined3d_buffer* dst_vertex_buffer; struct wined3d_buffer* index_buffer; TYPE_1__ desc; } ;
struct d3d_device {int world; int view; int proj; int handle_table; int wined3d_device; int ddraw; int IDirect3DDevice3_iface; } ;
typedef unsigned int WORD ;
struct TYPE_31__ {unsigned int hDestTexture; unsigned int hSrcTexture; } ;
struct TYPE_27__ {unsigned int v1; } ;
struct TYPE_26__ {unsigned int v2; } ;
struct TYPE_25__ {unsigned int v3; } ;
struct TYPE_30__ {int wFlags; TYPE_4__ u1; TYPE_3__ u2; TYPE_2__ u3; } ;
struct TYPE_29__ {int* dwArg; } ;
struct TYPE_28__ {int drstRenderStateType; int dlstLightStateType; int dtstTransformStateType; } ;
struct TYPE_22__ {int dwMask; int dwValue; unsigned int dwOffset; int bNegate; } ;
struct TYPE_21__ {unsigned int wCount; unsigned int bSize; int bOpcode; } ;
struct TYPE_20__ {int hSrcMatrix2; int hSrcMatrix1; int hDestMatrix; } ;
struct TYPE_19__ {int wCount; int wFirst; } ;
struct TYPE_18__ {int dwFlags; int wStart; int wDest; int dwCount; } ;
struct TYPE_17__ {TYPE_6__ u2; TYPE_5__ u1; } ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int D3DVERTEX ;
typedef TYPE_7__ D3DTRIANGLE ;
typedef int D3DTLVERTEX ;
typedef TYPE_8__ D3DTEXTURELOAD ;
typedef TYPE_9__ D3DSTATUS ;
typedef TYPE_10__ D3DSTATE ;
typedef TYPE_11__ D3DPROCESSVERTICES ;
typedef TYPE_12__ D3DPOINT ;
typedef TYPE_13__ D3DMATRIXMULTIPLY ;
typedef int D3DMATRIX ;
typedef TYPE_14__ D3DINSTRUCTION ;
typedef TYPE_15__ D3DBRANCH ;
typedef unsigned int BYTE ;


 int D3DFVF_LVERTEX ;
 int D3DFVF_TLVERTEX ;
 int D3DFVF_VERTEX ;
 int D3DPROCESSVERTICES_NOCOLOR ;
 int D3DPROCESSVERTICES_OPMASK ;


 int D3DPROCESSVERTICES_UPDATEEXTENTS ;
 int D3DTRANSFORMSTATE_PROJECTION ;
 int D3DTRANSFORMSTATE_VIEW ;
 int D3DTRANSFORMSTATE_WORLD ;
 int D3DTRIFLAG_EDGEENABLE1 ;
 int D3DTRIFLAG_EDGEENABLE2 ;
 int D3DTRIFLAG_EVEN ;
 int D3DTRIFLAG_ODD ;
 int D3DTRIFLAG_START ;
 int D3D_OK ;
 int DDERR_INVALIDPARAMS ;
 int DDRAW_HANDLE_MATRIX ;
 int DDRAW_HANDLE_SURFACE ;
 int ERR (char*,int,...) ;
 int FAILED (int ) ;
 int FALSE ;
 int FIXME (char*,...) ;
 int IDirect3DDevice3_SetLightState (int *,int ,int) ;
 int IDirect3DDevice3_SetRenderState (int *,int ,int) ;
 int IDirect3DDevice3_SetTransform (int *,int ,int *) ;
 int IDirect3DTexture2_Load (int *,int *) ;
 int TRACE (char*,...) ;
 scalar_t__ TRACE_ON (int ) ;
 int TRUE ;
 int WARN (char*,...) ;
 int WINED3DFMT_R16_UINT ;
 int WINED3DUSAGE_DYNAMIC ;
 int WINED3DUSAGE_STATICDECL ;
 int WINED3DUSAGE_WRITEONLY ;
 int WINED3D_BIND_INDEX_BUFFER ;
 int WINED3D_MAP_DISCARD ;
 int WINED3D_MAP_NOOVERWRITE ;
 int WINED3D_MAP_WRITE ;
 int WINED3D_PT_LINELIST ;
 int WINED3D_PT_POINTLIST ;
 int WINED3D_PT_TRIANGLELIST ;
 int WINED3D_RESOURCE_ACCESS_GPU ;
 int WINED3D_RESOURCE_ACCESS_MAP_R ;
 int WINED3D_RESOURCE_ACCESS_MAP_W ;
 int WINED3D_RS_LIGHTING ;
 int _dump_executedata (TYPE_16__*) ;
 int ddraw ;
 int ddraw_find_decl (int ,int ) ;
 void* ddraw_get_object (int *,int ,int ) ;
 int ddraw_null_wined3d_parent_ops ;
 unsigned int max (int,unsigned int) ;
 int multiply_matrix (int *,int *,int *) ;
 int viewport_activate (struct d3d_viewport*,int ) ;
 int wined3d_buffer_create (int ,struct wined3d_buffer_desc*,int *,int *,int *,struct wined3d_buffer**) ;
 int wined3d_buffer_decref (struct wined3d_buffer*) ;
 int wined3d_buffer_get_resource (struct wined3d_buffer*) ;
 int wined3d_device_copy_sub_resource_region (int ,int ,int ,int,int ,int ,int ,int ,struct wined3d_box*) ;
 int wined3d_device_draw_indexed_primitive (int ,unsigned int,unsigned int) ;
 int wined3d_device_draw_primitive (int ,int ,int ) ;
 int wined3d_device_process_vertices (int ,int,int,int,struct wined3d_buffer*,int *,int ,int ) ;
 int wined3d_device_set_index_buffer (int ,struct wined3d_buffer*,int ,int ) ;
 int wined3d_device_set_primitive_type (int ,int ,int ) ;
 int wined3d_device_set_render_state (int ,int ,int ) ;
 int wined3d_device_set_stream_source (int ,int ,struct wined3d_buffer*,int,int) ;
 int wined3d_device_set_vertex_declaration (int ,int ) ;
 int wined3d_resource_map (int ,int ,struct wined3d_map_desc*,struct wined3d_box*,int) ;
 int wined3d_resource_unmap (int ,int ) ;

HRESULT d3d_execute_buffer_execute(struct d3d_execute_buffer *buffer,
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
        WARN("Viewport %p active device is %p.\n",
                viewport, viewport->active_device);
        return DDERR_INVALIDPARAMS;
    }


    viewport_activate(viewport, FALSE);

    TRACE("ExecuteData :\n");
    if (TRACE_ON(ddraw))
        _dump_executedata(&(buffer->data));

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
            case 139:
            {
                const D3DPOINT *p = (D3DPOINT *)instr;
                wined3d_device_set_primitive_type(device->wined3d_device, WINED3D_PT_POINTLIST, 0);
                wined3d_device_set_stream_source(device->wined3d_device, 0,
                        buffer->dst_vertex_buffer, 0, sizeof(D3DTLVERTEX));
                wined3d_device_set_vertex_declaration(device->wined3d_device,
                        ddraw_find_decl(device->ddraw, D3DFVF_TLVERTEX));

                for (i = 0; i < count; ++i)
                    wined3d_device_draw_primitive(device->wined3d_device, p[i].wFirst, p[i].wCount);

                instr += sizeof(*p) * count;
                break;
            }

            case 142:
                primitive_size = 2;
                wined3d_device_set_primitive_type(device->wined3d_device, WINED3D_PT_LINELIST, 0);

            case 131:
            {
                WORD *indices;
                unsigned int index_pos = buffer->index_pos, index_count;
                TRACE("TRIANGLE         (%d)\n", count);

                if (!count)
                    break;

                if (!primitive_size)
                {
                    wined3d_device_set_primitive_type(device->wined3d_device, WINED3D_PT_TRIANGLELIST, 0);
                    primitive_size = 3;
                }

                index_count = count * primitive_size;

                if (buffer->index_size < index_count)
                {
                    unsigned int new_size = max(buffer->index_size * 2, index_count);
                    struct wined3d_buffer *new_buffer;
                    struct wined3d_buffer_desc desc;

                    desc.byte_width = new_size * sizeof(*indices);
                    desc.usage = WINED3DUSAGE_DYNAMIC | WINED3DUSAGE_WRITEONLY | WINED3DUSAGE_STATICDECL;
                    desc.bind_flags = WINED3D_BIND_INDEX_BUFFER;
                    desc.access = WINED3D_RESOURCE_ACCESS_GPU
                            | WINED3D_RESOURCE_ACCESS_MAP_R | WINED3D_RESOURCE_ACCESS_MAP_W;
                    desc.misc_flags = 0;
                    desc.structure_byte_stride = 0;

                    if (FAILED(hr = wined3d_buffer_create(device->wined3d_device, &desc,
                            ((void*)0), ((void*)0), &ddraw_null_wined3d_parent_ops, &new_buffer)))
                        return hr;

                    buffer->index_size = new_size;
                    if (buffer->index_buffer)
                        wined3d_buffer_decref(buffer->index_buffer);
                    buffer->index_buffer = new_buffer;
                    index_pos = 0;
                }
                else if (buffer->index_size - index_count < index_pos)
                {
                    index_pos = 0;
                }

                box.left = index_pos * sizeof(*indices);
                box.right = (index_pos + index_count) * sizeof(*indices);
                if (FAILED(hr = wined3d_resource_map(wined3d_buffer_get_resource(buffer->index_buffer), 0, &map_desc,
                        &box, WINED3D_MAP_WRITE | (index_pos ? WINED3D_MAP_NOOVERWRITE : WINED3D_MAP_DISCARD))))
                    return hr;
                indices = map_desc.data;

                for (i = 0; i < count; ++i)
                {
                    D3DTRIANGLE *ci = (D3DTRIANGLE *)instr;
                    TRACE("  v1: %d  v2: %d  v3: %d\n",ci->u1.v1, ci->u2.v2, ci->u3.v3);
                    TRACE("  Flags : ");
                    if (TRACE_ON(ddraw))
                    {

                        if (ci->wFlags & D3DTRIFLAG_EDGEENABLE1)
                            TRACE("EDGEENABLE1 ");
                        if (ci->wFlags & D3DTRIFLAG_EDGEENABLE2)
                            TRACE("EDGEENABLE2 ");
                        if (ci->wFlags & D3DTRIFLAG_EDGEENABLE1)
                            TRACE("EDGEENABLE3 ");

                        if (ci->wFlags == D3DTRIFLAG_EVEN)
                            TRACE("EVEN ");
                        if (ci->wFlags == D3DTRIFLAG_ODD)
                            TRACE("ODD ");
                        if (ci->wFlags == D3DTRIFLAG_START)
                            TRACE("START ");
                        if ((ci->wFlags > 0) && (ci->wFlags < 30))
                            TRACE("STARTFLAT(%u) ", ci->wFlags);
                        TRACE("\n");
                    }

                    switch (primitive_size)
                    {
                        case 3:
                            indices[(i * primitive_size) + 2] = ci->u3.v3;

                        case 2:
                            indices[(i * primitive_size) + 1] = ci->u2.v2;
                            indices[(i * primitive_size) ] = ci->u1.v1;
                    }
                    instr += size;
                }

                wined3d_resource_unmap(wined3d_buffer_get_resource(buffer->index_buffer), 0);

                wined3d_device_set_stream_source(device->wined3d_device, 0,
                        buffer->dst_vertex_buffer, 0, sizeof(D3DTLVERTEX));
                wined3d_device_set_vertex_declaration(device->wined3d_device,
                        ddraw_find_decl(device->ddraw, D3DFVF_TLVERTEX));
                wined3d_device_set_index_buffer(device->wined3d_device, buffer->index_buffer, WINED3DFMT_R16_UINT, 0);
                wined3d_device_draw_indexed_primitive(device->wined3d_device, index_pos, index_count);

                buffer->index_pos = index_pos + index_count;
                break;
            }

            case 141:
                WARN("MATRIXLOAD-s     (%u)\n", count);
                instr += count * size;
                break;

            case 140:
                TRACE("MATRIXMULTIPLY   (%d)\n", count);
                for (i = 0; i < count; ++i)
                {
                    D3DMATRIXMULTIPLY *ci = (D3DMATRIXMULTIPLY *)instr;
                    D3DMATRIX *a, *b, *c;

                    a = ddraw_get_object(&device->handle_table, ci->hDestMatrix - 1, DDRAW_HANDLE_MATRIX);
                    b = ddraw_get_object(&device->handle_table, ci->hSrcMatrix1 - 1, DDRAW_HANDLE_MATRIX);
                    c = ddraw_get_object(&device->handle_table, ci->hSrcMatrix2 - 1, DDRAW_HANDLE_MATRIX);

                    if (!a || !b || !c)
                    {
                        ERR("Invalid matrix handle (a %#x -> %p, b %#x -> %p, c %#x -> %p).\n",
                                ci->hDestMatrix, a, ci->hSrcMatrix1, b, ci->hSrcMatrix2, c);
                    }
                    else
                    {
                        TRACE("dst %p, src1 %p, src2 %p.\n", a, b, c);
                        multiply_matrix(a, c, b);
                    }

                    instr += size;
                }
                break;

            case 133:
                TRACE("STATETRANSFORM   (%d)\n", count);
                for (i = 0; i < count; ++i)
                {
                    D3DSTATE *ci = (D3DSTATE *)instr;
                    D3DMATRIX *m;

                    m = ddraw_get_object(&device->handle_table, ci->u2.dwArg[0] - 1, DDRAW_HANDLE_MATRIX);
                    if (!m)
                    {
                        ERR("Invalid matrix handle %#x.\n", ci->u2.dwArg[0]);
                    }
                    else
                    {
                        if (ci->u1.dtstTransformStateType == D3DTRANSFORMSTATE_WORLD)
                            device->world = ci->u2.dwArg[0];
                        if (ci->u1.dtstTransformStateType == D3DTRANSFORMSTATE_VIEW)
                            device->view = ci->u2.dwArg[0];
                        if (ci->u1.dtstTransformStateType == D3DTRANSFORMSTATE_PROJECTION)
                            device->proj = ci->u2.dwArg[0];
                        IDirect3DDevice3_SetTransform(&device->IDirect3DDevice3_iface,
                                ci->u1.dtstTransformStateType, m);
                    }

                    instr += size;
                }
                break;

            case 135:
                TRACE("STATELIGHT       (%d)\n", count);
                for (i = 0; i < count; ++i)
                {
                    D3DSTATE *ci = (D3DSTATE *)instr;

                    if (FAILED(IDirect3DDevice3_SetLightState(&device->IDirect3DDevice3_iface,
                            ci->u1.dlstLightStateType, ci->u2.dwArg[0])))
                        WARN("Failed to set light state.\n");

                    instr += size;
                }
                break;

            case 134:
                TRACE("STATERENDER      (%d)\n", count);
                for (i = 0; i < count; ++i)
                {
                    D3DSTATE *ci = (D3DSTATE *)instr;

                    if (FAILED(IDirect3DDevice3_SetRenderState(&device->IDirect3DDevice3_iface,
                            ci->u1.drstRenderStateType, ci->u2.dwArg[0])))
                        WARN("Failed to set render state.\n");

                    instr += size;
                }
                break;

            case 138:
                TRACE("PROCESSVERTICES  (%d)\n", count);

                for (i = 0; i < count; ++i)
                {
                    D3DPROCESSVERTICES *ci = (D3DPROCESSVERTICES *)instr;
                    DWORD op = ci->dwFlags & D3DPROCESSVERTICES_OPMASK;

                    TRACE("  start %u, dest %u, count %u, flags %#x.\n",
                            ci->wStart, ci->wDest, ci->dwCount, ci->dwFlags);

                    if (ci->dwFlags & D3DPROCESSVERTICES_UPDATEEXTENTS)
                    {
                        static int once;
                        if (!once++) FIXME("D3DPROCESSVERTICES_UPDATEEXTENTS not implemented.\n");
                    }
                    if (ci->dwFlags & D3DPROCESSVERTICES_NOCOLOR)
                        FIXME("D3DPROCESSVERTICES_NOCOLOR not implemented.\n");

                    switch (op)
                    {
                        case 128:
                        case 129:
                            wined3d_device_set_stream_source(device->wined3d_device, 0,
                                    buffer->src_vertex_buffer, buffer->src_vertex_pos, sizeof(D3DVERTEX));
                            if (op == 128)
                            {
                                wined3d_device_set_vertex_declaration(device->wined3d_device,
                                        ddraw_find_decl(device->ddraw, D3DFVF_VERTEX));
                                wined3d_device_set_render_state(device->wined3d_device,
                                        WINED3D_RS_LIGHTING, TRUE);
                            }
                            else
                            {
                                wined3d_device_set_vertex_declaration(device->wined3d_device,
                                        ddraw_find_decl(device->ddraw, D3DFVF_LVERTEX));
                                wined3d_device_set_render_state(device->wined3d_device,
                                        WINED3D_RS_LIGHTING, FALSE);
                            }

                            wined3d_device_process_vertices(device->wined3d_device, ci->wStart, ci->wDest,
                                    ci->dwCount, buffer->dst_vertex_buffer, ((void*)0), 0, D3DFVF_TLVERTEX);
                            break;

                        case 130:
                            box.left = (buffer->src_vertex_pos + ci->wStart) * sizeof(D3DTLVERTEX);
                            box.right = box.left + ci->dwCount * sizeof(D3DTLVERTEX);
                            box.top = box.front = 0;
                            box.bottom = box.back = 1;
                            wined3d_device_copy_sub_resource_region(device->wined3d_device,
                                    wined3d_buffer_get_resource(buffer->dst_vertex_buffer), 0,
                                    ci->wDest * sizeof(D3DTLVERTEX), 0, 0,
                                    wined3d_buffer_get_resource(buffer->src_vertex_buffer), 0, &box);
                            break;

                        default:
                            FIXME("Unhandled vertex processing op %#x.\n", op);
                            break;
                    }

                    instr += size;
                }
                break;

            case 132:
                TRACE("TEXTURELOAD    (%u)\n", count);

                for (i = 0; i < count; ++i)
                {
                    D3DTEXTURELOAD *ci = (D3DTEXTURELOAD *)instr;
                    struct ddraw_surface *dst, *src;

                    instr += size;

                    if (!(dst = ddraw_get_object(&device->handle_table,
                            ci->hDestTexture - 1, DDRAW_HANDLE_SURFACE)))
                    {
                        WARN("Invalid destination texture handle %#x.\n", ci->hDestTexture);
                        continue;
                    }
                    if (!(src = ddraw_get_object(&device->handle_table,
                            ci->hSrcTexture - 1, DDRAW_HANDLE_SURFACE)))
                    {
                        WARN("Invalid source texture handle %#x.\n", ci->hSrcTexture);
                        continue;
                    }

                    IDirect3DTexture2_Load(&dst->IDirect3DTexture2_iface, &src->IDirect3DTexture2_iface);
                }
                break;

            case 143:
                TRACE("EXIT             (%u)\n", count);
                instr += size;
                goto end_of_buffer;

            case 144:
                TRACE("BRANCHFORWARD    (%d)\n", count);
                for (i = 0; i < count; ++i)
                {
                    D3DBRANCH *ci = (D3DBRANCH *)instr;

                    if ((buffer->data.dsStatus.dwStatus & ci->dwMask) == ci->dwValue)
                    {
                        if (!ci->bNegate)
                        {
                            TRACE(" Branch to %d\n", ci->dwOffset);
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
                            TRACE(" Branch to %d\n", ci->dwOffset);
                            if (ci->dwOffset) {
                                instr = (char*)current + ci->dwOffset;
                                break;
                            }
                        }
                    }

                    instr += size;
                }
                break;

            case 136:
                WARN("SPAN-s           (%u)\n", count);
                instr += count * size;
                break;

            case 137:
                TRACE("SETSTATUS        (%d)\n", count);
                for (i = 0; i < count; ++i)
                {
                    buffer->data.dsStatus = *(D3DSTATUS *)instr;
                    instr += size;
                }
                break;

            default:
                ERR("Unhandled OpCode %#x.\n",current->bOpcode);
                instr += count * size;
                break;
        }
    }

end_of_buffer:
    return D3D_OK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct wined3d_vertex_element {int usage_idx; int usage; int method; scalar_t__ instance_data_step_rate; int input_slot_class; int output_slot; int offset; int input_slot; int format; } ;
typedef int UINT ;
struct TYPE_9__ {int format; } ;
struct TYPE_8__ {size_t Type; int UsageIndex; int Usage; int Method; int Offset; int Stream; } ;
struct TYPE_7__ {int Stream; } ;
typedef int HRESULT ;
typedef TYPE_2__ D3DVERTEXELEMENT9 ;


 size_t ARRAY_SIZE (TYPE_3__*) ;
 int D3DERR_OUTOFVIDEOMEMORY ;
 int D3D_OK ;
 int E_FAIL ;
 int FIXME (char*) ;
 int TRACE (char*,TYPE_2__ const*,struct wined3d_vertex_element**,int*) ;
 int WARN (char*,size_t) ;
 int WINED3D_INPUT_PER_VERTEX_DATA ;
 int WINED3D_OUTPUT_SLOT_SEMANTIC ;
 TYPE_3__* d3d_dtype_lookup ;
 struct wined3d_vertex_element* heap_alloc (int) ;
 int heap_free (struct wined3d_vertex_element*) ;

__attribute__((used)) static HRESULT convert_to_wined3d_declaration(const D3DVERTEXELEMENT9 *d3d9_elements,
        struct wined3d_vertex_element **wined3d_elements, UINT *element_count)
{
    const D3DVERTEXELEMENT9* element;
    UINT count = 1;
    UINT i;

    TRACE("d3d9_elements %p, wined3d_elements %p, element_count %p\n", d3d9_elements, wined3d_elements, element_count);

    element = d3d9_elements;
    while (element++->Stream != 0xff && count++ < 128);

    if (count == 128) return E_FAIL;


    --count;

    if (!(*wined3d_elements = heap_alloc(count * sizeof(**wined3d_elements))))
    {
        FIXME("Memory allocation failed\n");
        return D3DERR_OUTOFVIDEOMEMORY;
    }

    for (i = 0; i < count; ++i)
    {
        if (d3d9_elements[i].Type >= ARRAY_SIZE(d3d_dtype_lookup))
        {
            WARN("Invalid element type %#x.\n", d3d9_elements[i].Type);
            heap_free(*wined3d_elements);
            return E_FAIL;
        }
        (*wined3d_elements)[i].format = d3d_dtype_lookup[d3d9_elements[i].Type].format;
        (*wined3d_elements)[i].input_slot = d3d9_elements[i].Stream;
        (*wined3d_elements)[i].offset = d3d9_elements[i].Offset;
        (*wined3d_elements)[i].output_slot = WINED3D_OUTPUT_SLOT_SEMANTIC;
        (*wined3d_elements)[i].input_slot_class = WINED3D_INPUT_PER_VERTEX_DATA;
        (*wined3d_elements)[i].instance_data_step_rate = 0;
        (*wined3d_elements)[i].method = d3d9_elements[i].Method;
        (*wined3d_elements)[i].usage = d3d9_elements[i].Usage;
        (*wined3d_elements)[i].usage_idx = d3d9_elements[i].UsageIndex;
    }

    *element_count = count;

    return D3D_OK;
}

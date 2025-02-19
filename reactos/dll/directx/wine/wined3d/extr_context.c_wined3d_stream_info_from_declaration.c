
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_vertex_declaration_element {size_t input_slot; unsigned int output_slot; scalar_t__ input_slot_class; int instance_data_step_rate; TYPE_3__* format; int offset; int usage_idx; int usage; int ffp_valid; } ;
struct wined3d_vertex_declaration {unsigned int element_count; struct wined3d_vertex_declaration_element* elements; int position_transformed; } ;
struct wined3d_stream_state {int offset; int flags; int stride; int buffer; } ;
struct wined3d_stream_info {unsigned int use_map; unsigned int swizzle_map; TYPE_2__* elements; int position_transformed; } ;
struct wined3d_state {int * shader; struct wined3d_stream_state* streams; struct wined3d_vertex_declaration* vertex_declaration; } ;
struct wined3d_gl_info {int * supported; } ;
struct wined3d_d3d_info {scalar_t__ ffp_generic_attributes; } ;
struct TYPE_6__ {scalar_t__ id; } ;
struct TYPE_4__ {int * addr; scalar_t__ buffer_object; } ;
struct TYPE_5__ {size_t stream_idx; int divisor; int stride; TYPE_1__ data; TYPE_3__* format; } ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 size_t ARB_VERTEX_ARRAY_BGRA ;
 scalar_t__ FALSE ;
 int FIXME (char*) ;
 int TRACE (char*,...) ;
 scalar_t__ TRUE ;
 int WARN (char*,int ,int ) ;
 scalar_t__ WINED3DFMT_B8G8R8A8_UNORM ;
 int WINED3DSTREAMSOURCE_INSTANCEDATA ;
 scalar_t__ WINED3D_INPUT_PER_INSTANCE_DATA ;
 unsigned int WINED3D_OUTPUT_SLOT_SEMANTIC ;
 unsigned int WINED3D_OUTPUT_SLOT_UNUSED ;
 size_t WINED3D_SHADER_TYPE_VERTEX ;
 int debug_d3ddeclusage (int ) ;
 int debug_d3dformat (scalar_t__) ;
 int debug_d3dinput_classification (scalar_t__) ;
 scalar_t__ fixed_get_input (int ,int ,unsigned int*) ;
 scalar_t__ use_vs (struct wined3d_state const*) ;
 scalar_t__ vshader_get_input (int ,int ,int ,unsigned int*) ;

void wined3d_stream_info_from_declaration(struct wined3d_stream_info *stream_info,
        const struct wined3d_state *state, const struct wined3d_gl_info *gl_info,
        const struct wined3d_d3d_info *d3d_info)
{

    struct wined3d_vertex_declaration *declaration = state->vertex_declaration;
    BOOL generic_attributes = d3d_info->ffp_generic_attributes;
    BOOL use_vshader = use_vs(state);
    unsigned int i;

    stream_info->use_map = 0;
    stream_info->swizzle_map = 0;
    stream_info->position_transformed = 0;

    if (!declaration)
        return;

    stream_info->position_transformed = declaration->position_transformed;


    for (i = 0; i < declaration->element_count; ++i)
    {
        const struct wined3d_vertex_declaration_element *element = &declaration->elements[i];
        const struct wined3d_stream_state *stream = &state->streams[element->input_slot];
        BOOL stride_used;
        unsigned int idx;

        TRACE("%p Element %p (%u of %u).\n", declaration->elements,
                element, i + 1, declaration->element_count);

        if (!stream->buffer)
            continue;

        TRACE("offset %u input_slot %u usage_idx %d.\n", element->offset, element->input_slot, element->usage_idx);

        if (use_vshader)
        {
            if (element->output_slot == WINED3D_OUTPUT_SLOT_UNUSED)
            {
                stride_used = FALSE;
            }
            else if (element->output_slot == WINED3D_OUTPUT_SLOT_SEMANTIC)
            {



                stride_used = vshader_get_input(state->shader[WINED3D_SHADER_TYPE_VERTEX],
                        element->usage, element->usage_idx, &idx);
            }
            else
            {
                idx = element->output_slot;
                stride_used = TRUE;
            }
        }
        else
        {
            if (!generic_attributes && !element->ffp_valid)
            {
                WARN("Skipping unsupported fixed function element of format %s and usage %s.\n",
                        debug_d3dformat(element->format->id), debug_d3ddeclusage(element->usage));
                stride_used = FALSE;
            }
            else
            {
                stride_used = fixed_get_input(element->usage, element->usage_idx, &idx);
            }
        }

        if (stride_used)
        {
            TRACE("Load %s array %u [usage %s, usage_idx %u, "
                    "input_slot %u, offset %u, stride %u, format %s, class %s, step_rate %u].\n",
                    use_vshader ? "shader": "fixed function", idx,
                    debug_d3ddeclusage(element->usage), element->usage_idx, element->input_slot,
                    element->offset, stream->stride, debug_d3dformat(element->format->id),
                    debug_d3dinput_classification(element->input_slot_class), element->instance_data_step_rate);

            stream_info->elements[idx].format = element->format;
            stream_info->elements[idx].data.buffer_object = 0;
            stream_info->elements[idx].data.addr = (BYTE *)((void*)0) + stream->offset + element->offset;
            stream_info->elements[idx].stride = stream->stride;
            stream_info->elements[idx].stream_idx = element->input_slot;
            if (stream->flags & WINED3DSTREAMSOURCE_INSTANCEDATA)
            {
                stream_info->elements[idx].divisor = 1;
            }
            else if (element->input_slot_class == WINED3D_INPUT_PER_INSTANCE_DATA)
            {
                stream_info->elements[idx].divisor = element->instance_data_step_rate;
                if (!element->instance_data_step_rate)
                    FIXME("Instance step rate 0 not implemented.\n");
            }
            else
            {
                stream_info->elements[idx].divisor = 0;
            }

            if (!gl_info->supported[ARB_VERTEX_ARRAY_BGRA]
                    && element->format->id == WINED3DFMT_B8G8R8A8_UNORM)
            {
                stream_info->swizzle_map |= 1u << idx;
            }
            stream_info->use_map |= 1u << idx;
        }
    }
}

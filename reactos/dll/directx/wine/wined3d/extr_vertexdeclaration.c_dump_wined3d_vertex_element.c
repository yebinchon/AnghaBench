
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_vertex_element {int usage_idx; int usage; int method; int instance_data_step_rate; int input_slot_class; int output_slot; int offset; int input_slot; int format; } ;


 int TRACE (char*,int ,...) ;
 int debug_d3ddeclmethod (int ) ;
 int debug_d3ddeclusage (int ) ;
 int debug_d3dformat (int ) ;
 int debug_d3dinput_classification (int ) ;

__attribute__((used)) static void dump_wined3d_vertex_element(const struct wined3d_vertex_element *element)
{
    TRACE("                 format: %s (%#x)\n", debug_d3dformat(element->format), element->format);
    TRACE("             input_slot: %u\n", element->input_slot);
    TRACE("                 offset: %u\n", element->offset);
    TRACE("            output_slot: %u\n", element->output_slot);
    TRACE("       input slot class: %s\n", debug_d3dinput_classification(element->input_slot_class));
    TRACE("instance data step rate: %u\n", element->instance_data_step_rate);
    TRACE("                 method: %s (%#x)\n", debug_d3ddeclmethod(element->method), element->method);
    TRACE("                  usage: %s (%#x)\n", debug_d3ddeclusage(element->usage), element->usage);
    TRACE("              usage_idx: %u\n", element->usage_idx);
}

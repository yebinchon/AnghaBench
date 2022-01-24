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
struct wined3d_vertex_element {int /*<<< orphan*/  usage_idx; int /*<<< orphan*/  usage; int /*<<< orphan*/  method; int /*<<< orphan*/  instance_data_step_rate; int /*<<< orphan*/  input_slot_class; int /*<<< orphan*/  output_slot; int /*<<< orphan*/  offset; int /*<<< orphan*/  input_slot; int /*<<< orphan*/  format; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const struct wined3d_vertex_element *element)
{
    FUNC0("                 format: %s (%#x)\n", FUNC3(element->format), element->format);
    FUNC0("             input_slot: %u\n", element->input_slot);
    FUNC0("                 offset: %u\n", element->offset);
    FUNC0("            output_slot: %u\n", element->output_slot);
    FUNC0("       input slot class: %s\n", FUNC4(element->input_slot_class));
    FUNC0("instance data step rate: %u\n", element->instance_data_step_rate);
    FUNC0("                 method: %s (%#x)\n", FUNC1(element->method), element->method);
    FUNC0("                  usage: %s (%#x)\n", FUNC2(element->usage), element->usage);
    FUNC0("              usage_idx: %u\n", element->usage_idx);
}
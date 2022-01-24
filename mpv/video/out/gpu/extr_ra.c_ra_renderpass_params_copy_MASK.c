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
struct ra_renderpass_params {void* compute_shader; void* frag_shader; void* vertex_shader; int /*<<< orphan*/  cached_program; int /*<<< orphan*/  num_vertex_attribs; void* vertex_attribs; int /*<<< orphan*/  num_inputs; void* inputs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ra_renderpass_params*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct ra_renderpass_params*,void*,int /*<<< orphan*/ ) ; 
 struct ra_renderpass_params* res ; 
 struct ra_renderpass_params* FUNC2 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct ra_renderpass_params*,void*) ; 

struct ra_renderpass_params *FUNC4(void *ta_parent,
        const struct ra_renderpass_params *params)
{
    struct ra_renderpass_params *res = FUNC2(ta_parent, res);
    *res = *params;
    res->inputs = FUNC1(res, res->inputs, res->num_inputs);
    res->vertex_attribs =
        FUNC1(res, res->vertex_attribs, res->num_vertex_attribs);
    res->cached_program = FUNC0(res, res->cached_program);
    res->vertex_shader = FUNC3(res, res->vertex_shader);
    res->frag_shader = FUNC3(res, res->frag_shader);
    res->compute_shader = FUNC3(res, res->compute_shader);
    return res;
}
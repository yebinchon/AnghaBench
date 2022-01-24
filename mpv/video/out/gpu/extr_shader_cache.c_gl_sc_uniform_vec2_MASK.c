#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {float* f; } ;
struct TYPE_4__ {int dim_v; int /*<<< orphan*/  type; } ;
struct sc_uniform {char* glsl_type; TYPE_1__ v; TYPE_2__ input; } ;
struct gl_shader_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RA_VARTYPE_FLOAT ; 
 struct sc_uniform* FUNC0 (struct gl_shader_cache*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gl_shader_cache*,struct sc_uniform*) ; 

void FUNC2(struct gl_shader_cache *sc, char *name, float f[2])
{
    struct sc_uniform *u = FUNC0(sc, name);
    u->input.type = RA_VARTYPE_FLOAT;
    u->input.dim_v = 2;
    u->glsl_type = "vec2";
    FUNC1(sc, u);
    u->v.f[0] = f[0];
    u->v.f[1] = f[1];
}
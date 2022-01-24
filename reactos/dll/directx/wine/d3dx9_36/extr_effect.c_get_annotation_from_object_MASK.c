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
struct d3dx_top_level_parameter {int /*<<< orphan*/  annotation_count; struct d3dx_parameter* annotations; } ;
struct d3dx_technique {int /*<<< orphan*/  annotation_count; struct d3dx_parameter* annotations; } ;
struct d3dx_pass {int /*<<< orphan*/  annotation_count; struct d3dx_parameter* annotations; } ;
struct d3dx_parameter {int dummy; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  D3DXHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct d3dx_parameter* FUNC1 (struct d3dx9_base_effect*,int /*<<< orphan*/ ) ; 
 struct d3dx_pass* FUNC2 (struct d3dx9_base_effect*,int /*<<< orphan*/ ) ; 
 struct d3dx_technique* FUNC3 (struct d3dx9_base_effect*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct d3dx_parameter*) ; 
 struct d3dx_top_level_parameter* FUNC5 (struct d3dx_parameter*) ; 

__attribute__((used)) static UINT FUNC6(struct d3dx9_base_effect *base,
        D3DXHANDLE object, struct d3dx_parameter **annotations)
{
    struct d3dx_parameter *param = FUNC1(base, object);
    struct d3dx_pass *pass = FUNC2(base, object);
    struct d3dx_technique *technique = FUNC3(base, object);

    if (pass)
    {
        *annotations = pass->annotations;
        return pass->annotation_count;
    }
    else if (technique)
    {
        *annotations = technique->annotations;
        return technique->annotation_count;
    }
    else if (param)
    {
        if (FUNC4(param))
        {
            struct d3dx_top_level_parameter *top_param
                    = FUNC5(param);

            *annotations = top_param->annotations;
            return top_param->annotation_count;
        }
        else
        {
            *annotations = NULL;
            return 0;
        }
    }
    else
    {
        FUNC0("Functions are not handled, yet!\n");
        return 0;
    }
}
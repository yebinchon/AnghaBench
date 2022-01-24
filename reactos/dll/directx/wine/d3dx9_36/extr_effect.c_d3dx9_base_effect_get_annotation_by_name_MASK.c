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
struct d3dx_parameter {int dummy; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/ * D3DXHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct d3dx_parameter*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct d3dx_parameter* FUNC2 (struct d3dx9_base_effect*,int /*<<< orphan*/ ,struct d3dx_parameter*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct d3dx9_base_effect*,int /*<<< orphan*/ *,struct d3dx_parameter**) ; 
 int /*<<< orphan*/ * FUNC4 (struct d3dx_parameter*) ; 

__attribute__((used)) static D3DXHANDLE FUNC5(struct d3dx9_base_effect *base,
        D3DXHANDLE object, const char *name)
{
    struct d3dx_parameter *annotation = NULL;
    struct d3dx_parameter *annotations = NULL;
    UINT annotation_count = 0;

    if (!name)
    {
        FUNC1("Invalid argument specified\n");
        return NULL;
    }

    annotation_count = FUNC3(base, object, &annotations);

    annotation = FUNC2(base, annotation_count, annotations, name);
    if (annotation)
    {
        FUNC0("Returning parameter %p\n", annotation);
        return FUNC4(annotation);
    }

    FUNC1("Annotation not found.\n");

    return NULL;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hlsl_type {char const* name; int type; int base_type; unsigned int dimx; unsigned int dimy; int /*<<< orphan*/  entry; } ;
typedef  enum hlsl_type_class { ____Placeholder_hlsl_type_class } hlsl_type_class ;
typedef  enum hlsl_base_type { ____Placeholder_hlsl_base_type } hlsl_base_type ;
struct TYPE_2__ {int /*<<< orphan*/  types; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct hlsl_type* FUNC1 (int) ; 
 TYPE_1__ hlsl_ctx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct hlsl_type *FUNC3(const char *name, enum hlsl_type_class type_class,
        enum hlsl_base_type base_type, unsigned dimx, unsigned dimy)
{
    struct hlsl_type *type;

    type = FUNC1(sizeof(*type));
    if (!type)
    {
        FUNC0("Out of memory\n");
        return NULL;
    }
    type->name = name;
    type->type = type_class;
    type->base_type = base_type;
    type->dimx = dimx;
    type->dimy = dimy;

    FUNC2(&hlsl_ctx.types, &type->entry);

    return type;
}
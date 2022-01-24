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
struct source_location {int /*<<< orphan*/  col; int /*<<< orphan*/  line; int /*<<< orphan*/  file; } ;
struct hlsl_type {scalar_t__ type; scalar_t__ base_type; int dimx; int dimy; } ;
typedef  enum hlsl_type_class { ____Placeholder_hlsl_type_class } hlsl_type_class ;
typedef  enum hlsl_base_type { ____Placeholder_hlsl_base_type } hlsl_base_type ;

/* Variables and functions */
 scalar_t__ HLSL_CLASS_LAST_NUMERIC ; 
 scalar_t__ HLSL_CLASS_MATRIX ; 
 int HLSL_CLASS_VECTOR ; 
 int /*<<< orphan*/  HLSL_LEVEL_ERROR ; 
 scalar_t__ FUNC0 (struct hlsl_type*,struct hlsl_type*) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hlsl_type*,struct hlsl_type*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC4 (unsigned int,unsigned int) ; 
 unsigned int FUNC5 (unsigned int,unsigned int) ; 
 struct hlsl_type* FUNC6 (int /*<<< orphan*/ *,int,int,unsigned int,unsigned int) ; 

__attribute__((used)) static struct hlsl_type *FUNC7(struct hlsl_type *t1, struct hlsl_type *t2,
        struct source_location *loc)
{
    enum hlsl_type_class type;
    enum hlsl_base_type base;
    unsigned int dimx, dimy;

    if (t1->type > HLSL_CLASS_LAST_NUMERIC || t2->type > HLSL_CLASS_LAST_NUMERIC)
    {
        FUNC3(loc->file, loc->line, loc->col, HLSL_LEVEL_ERROR,
                "non scalar/vector/matrix data type in expression");
        return NULL;
    }

    if (FUNC0(t1, t2))
        return t1;

    if (!FUNC2(t1, t2))
    {
        FUNC3(loc->file, loc->line, loc->col, HLSL_LEVEL_ERROR,
                "expression data types are incompatible");
        return NULL;
    }

    if (t1->base_type == t2->base_type)
        base = t1->base_type;
    else
        base = FUNC1(t1->base_type, t2->base_type);

    if (t1->dimx == 1 && t1->dimy == 1)
    {
        type = t2->type;
        dimx = t2->dimx;
        dimy = t2->dimy;
    }
    else if (t2->dimx == 1 && t2->dimy == 1)
    {
        type = t1->type;
        dimx = t1->dimx;
        dimy = t1->dimy;
    }
    else if (t1->type == HLSL_CLASS_MATRIX && t2->type == HLSL_CLASS_MATRIX)
    {
        type = HLSL_CLASS_MATRIX;
        dimx = FUNC5(t1->dimx, t2->dimx);
        dimy = FUNC5(t1->dimy, t2->dimy);
    }
    else
    {
        /* Two vectors or a vector and a matrix (matrix must be 1xn or nx1) */
        unsigned int max_dim_1, max_dim_2;

        max_dim_1 = FUNC4(t1->dimx, t1->dimy);
        max_dim_2 = FUNC4(t2->dimx, t2->dimy);
        if (t1->dimx * t1->dimy == t2->dimx * t2->dimy)
        {
            type = HLSL_CLASS_VECTOR;
            dimx = FUNC4(t1->dimx, t2->dimx);
            dimy = 1;
        }
        else if (max_dim_1 <= max_dim_2)
        {
            type = t1->type;
            if (type == HLSL_CLASS_VECTOR)
            {
                dimx = max_dim_1;
                dimy = 1;
            }
            else
            {
                dimx = t1->dimx;
                dimy = t1->dimy;
            }
        }
        else
        {
            type = t2->type;
            if (type == HLSL_CLASS_VECTOR)
            {
                dimx = max_dim_2;
                dimy = 1;
            }
            else
            {
                dimx = t2->dimx;
                dimy = t2->dimy;
            }
        }
    }

    return FUNC6(NULL, type, base, dimx, dimy);
}
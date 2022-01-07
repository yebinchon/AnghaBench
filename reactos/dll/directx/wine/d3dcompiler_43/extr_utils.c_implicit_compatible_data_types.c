
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct hlsl_type* type; } ;
struct TYPE_4__ {TYPE_1__ array; } ;
struct hlsl_type {scalar_t__ type; int dimx; int dimy; TYPE_2__ e; } ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ HLSL_CLASS_ARRAY ;
 scalar_t__ HLSL_CLASS_LAST_NUMERIC ;
 scalar_t__ HLSL_CLASS_MATRIX ;
 scalar_t__ HLSL_CLASS_STRUCT ;
 scalar_t__ HLSL_CLASS_VECTOR ;
 int TRUE ;
 int compare_hlsl_types (struct hlsl_type*,struct hlsl_type*) ;
 scalar_t__ components_count_type (struct hlsl_type*) ;
 int convertible_data_type (struct hlsl_type*) ;

__attribute__((used)) static BOOL implicit_compatible_data_types(struct hlsl_type *t1, struct hlsl_type *t2)
{
    if (!convertible_data_type(t1) || !convertible_data_type(t2))
        return FALSE;

    if (t1->type <= HLSL_CLASS_LAST_NUMERIC)
    {

        if (t1->dimx == 1 && t1->dimy == 1 && t2->type <= HLSL_CLASS_LAST_NUMERIC)
            return TRUE;

        if (t2->dimx == 1 && t2->dimy == 1 && t2->type <= HLSL_CLASS_LAST_NUMERIC)
            return TRUE;
    }

    if (t1->type == HLSL_CLASS_ARRAY && t2->type == HLSL_CLASS_ARRAY)
    {
        return components_count_type(t1) == components_count_type(t2);
    }

    if ((t1->type == HLSL_CLASS_ARRAY && t2->type <= HLSL_CLASS_LAST_NUMERIC)
            || (t1->type <= HLSL_CLASS_LAST_NUMERIC && t2->type == HLSL_CLASS_ARRAY))
    {

        if (t1->type == HLSL_CLASS_ARRAY && compare_hlsl_types(t1->e.array.type, t2))
            return TRUE;
        if (components_count_type(t1) == components_count_type(t2))
            return TRUE;
        return FALSE;
    }

    if (t1->type <= HLSL_CLASS_VECTOR && t2->type <= HLSL_CLASS_VECTOR)
    {
        if (t1->dimx >= t2->dimx)
            return TRUE;
        return FALSE;
    }

    if (t1->type == HLSL_CLASS_MATRIX || t2->type == HLSL_CLASS_MATRIX)
    {
        if (t1->type == HLSL_CLASS_MATRIX && t2->type == HLSL_CLASS_MATRIX
                && t1->dimx >= t2->dimx && t1->dimy >= t2->dimy)
            return TRUE;


        if ((t1->type == HLSL_CLASS_VECTOR || t2->type == HLSL_CLASS_VECTOR)
                && components_count_type(t1) == components_count_type(t2))
            return TRUE;
        return FALSE;
    }

    if (t1->type == HLSL_CLASS_STRUCT && t2->type == HLSL_CLASS_STRUCT)
        return compare_hlsl_types(t1, t2);

    return FALSE;
}

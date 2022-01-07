
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlsl_type {scalar_t__ base_type; int dimx; int dimy; scalar_t__ type; } ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ HLSL_CLASS_MATRIX ;
 scalar_t__ HLSL_CLASS_VECTOR ;
 scalar_t__ HLSL_TYPE_LAST_SCALAR ;
 int TRUE ;
 scalar_t__ components_count_type (struct hlsl_type*) ;

__attribute__((used)) static BOOL expr_compatible_data_types(struct hlsl_type *t1, struct hlsl_type *t2)
{
    if (t1->base_type > HLSL_TYPE_LAST_SCALAR || t2->base_type > HLSL_TYPE_LAST_SCALAR)
        return FALSE;


    if ((t1->dimx == 1 && t1->dimy == 1) || (t2->dimx == 1 && t2->dimy == 1))
        return TRUE;

    if (t1->type == HLSL_CLASS_VECTOR && t2->type == HLSL_CLASS_VECTOR)
        return TRUE;

    if (t1->type == HLSL_CLASS_MATRIX || t2->type == HLSL_CLASS_MATRIX)
    {


        if (t1->type == HLSL_CLASS_VECTOR || t2->type == HLSL_CLASS_VECTOR)
        {
            if (components_count_type(t1) == components_count_type(t2))
                return TRUE;

            return (t1->type == HLSL_CLASS_MATRIX && (t1->dimx == 1 || t1->dimy == 1))
                    || (t2->type == HLSL_CLASS_MATRIX && (t2->dimx == 1 || t2->dimy == 1));
        }


        if ((t1->dimx >= t2->dimx && t1->dimy >= t2->dimy)
                || (t1->dimx <= t2->dimx && t1->dimy <= t2->dimy))
            return TRUE;
    }

    return FALSE;
}

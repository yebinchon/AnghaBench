
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct source_location {int col; int line; int file; } ;
struct hlsl_type {scalar_t__ type; scalar_t__ base_type; int dimx; int dimy; } ;
typedef enum hlsl_type_class { ____Placeholder_hlsl_type_class } hlsl_type_class ;
typedef enum hlsl_base_type { ____Placeholder_hlsl_base_type } hlsl_base_type ;


 scalar_t__ HLSL_CLASS_LAST_NUMERIC ;
 scalar_t__ HLSL_CLASS_MATRIX ;
 int HLSL_CLASS_VECTOR ;
 int HLSL_LEVEL_ERROR ;
 scalar_t__ compare_hlsl_types (struct hlsl_type*,struct hlsl_type*) ;
 int expr_common_base_type (int,int) ;
 int expr_compatible_data_types (struct hlsl_type*,struct hlsl_type*) ;
 int hlsl_report_message (int ,int ,int ,int ,char*) ;
 unsigned int max (unsigned int,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;
 struct hlsl_type* new_hlsl_type (int *,int,int,unsigned int,unsigned int) ;

__attribute__((used)) static struct hlsl_type *expr_common_type(struct hlsl_type *t1, struct hlsl_type *t2,
        struct source_location *loc)
{
    enum hlsl_type_class type;
    enum hlsl_base_type base;
    unsigned int dimx, dimy;

    if (t1->type > HLSL_CLASS_LAST_NUMERIC || t2->type > HLSL_CLASS_LAST_NUMERIC)
    {
        hlsl_report_message(loc->file, loc->line, loc->col, HLSL_LEVEL_ERROR,
                "non scalar/vector/matrix data type in expression");
        return ((void*)0);
    }

    if (compare_hlsl_types(t1, t2))
        return t1;

    if (!expr_compatible_data_types(t1, t2))
    {
        hlsl_report_message(loc->file, loc->line, loc->col, HLSL_LEVEL_ERROR,
                "expression data types are incompatible");
        return ((void*)0);
    }

    if (t1->base_type == t2->base_type)
        base = t1->base_type;
    else
        base = expr_common_base_type(t1->base_type, t2->base_type);

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
        dimx = min(t1->dimx, t2->dimx);
        dimy = min(t1->dimy, t2->dimy);
    }
    else
    {

        unsigned int max_dim_1, max_dim_2;

        max_dim_1 = max(t1->dimx, t1->dimy);
        max_dim_2 = max(t2->dimx, t2->dimy);
        if (t1->dimx * t1->dimy == t2->dimx * t2->dimy)
        {
            type = HLSL_CLASS_VECTOR;
            dimx = max(t1->dimx, t2->dimx);
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

    return new_hlsl_type(((void*)0), type, base, dimx, dimy);
}

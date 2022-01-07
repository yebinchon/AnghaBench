
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum hlsl_base_type { ____Placeholder_hlsl_base_type } hlsl_base_type ;


 int ARRAY_SIZE (int const*) ;
 int FIXME (char*) ;







__attribute__((used)) static enum hlsl_base_type expr_common_base_type(enum hlsl_base_type t1, enum hlsl_base_type t2)
{
    static const enum hlsl_base_type types[] =
    {
        133,
        129,
        128,
        130,
        131,
        132,
    };
    int t1_idx = -1, t2_idx = -1, i;

    for (i = 0; i < ARRAY_SIZE(types); ++i)
    {

        if (t1 == types[i])
            t1_idx = t1 == 130 ? i + 1 : i;
        if (t2 == types[i])
            t2_idx = t2 == 130 ? i + 1 : i;

        if (t1_idx != -1 && t2_idx != -1)
            break;
    }
    if (t1_idx == -1 || t2_idx == -1)
    {
        FIXME("Unexpected base type.\n");
        return 131;
    }
    return t1_idx >= t2_idx ? t1 : t2;
}

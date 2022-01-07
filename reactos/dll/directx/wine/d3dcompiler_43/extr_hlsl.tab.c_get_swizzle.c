
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct source_location {int dummy; } ;
struct hlsl_ir_swizzle {int dummy; } ;
struct hlsl_ir_node {TYPE_1__* data_type; } ;
struct TYPE_2__ {scalar_t__ type; unsigned int dimx; unsigned int dimy; } ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ HLSL_CLASS_MATRIX ;
 int TRUE ;
 struct hlsl_ir_swizzle* new_swizzle (unsigned int,unsigned int,struct hlsl_ir_node*,struct source_location*) ;
 unsigned int strlen (char const*) ;

__attribute__((used)) static struct hlsl_ir_swizzle *get_swizzle(struct hlsl_ir_node *value, const char *swizzle,
        struct source_location *loc)
{
    unsigned int len = strlen(swizzle), component = 0;
    unsigned int i, set, swiz = 0;
    BOOL valid;

    if (value->data_type->type == HLSL_CLASS_MATRIX)
    {

        BOOL m_swizzle;
        unsigned int inc, x, y;

        if (len < 3 || swizzle[0] != '_')
            return ((void*)0);
        m_swizzle = swizzle[1] == 'm';
        inc = m_swizzle ? 4 : 3;

        if (len % inc || len > inc * 4)
            return ((void*)0);

        for (i = 0; i < len; i += inc)
        {
            if (swizzle[i] != '_')
                return ((void*)0);
            if (m_swizzle)
            {
                if (swizzle[i + 1] != 'm')
                    return ((void*)0);
                x = swizzle[i + 2] - '0';
                y = swizzle[i + 3] - '0';
            }
            else
            {
                x = swizzle[i + 1] - '1';
                y = swizzle[i + 2] - '1';
            }

            if (x >= value->data_type->dimx || y >= value->data_type->dimy)
                return ((void*)0);
            swiz |= (y << 4 | x) << component * 8;
            component++;
        }
        return new_swizzle(swiz, component, value, loc);
    }


    if (len > 4)
        return ((void*)0);

    for (set = 0; set < 2; ++set)
    {
        valid = TRUE;
        component = 0;
        for (i = 0; i < len; ++i)
        {
            char c[2][4] = {{'x', 'y', 'z', 'w'}, {'r', 'g', 'b', 'a'}};
            unsigned int s = 0;

            for (s = 0; s < 4; ++s)
            {
                if (swizzle[i] == c[set][s])
                    break;
            }
            if (s == 4)
            {
                valid = FALSE;
                break;
            }

            if (s >= value->data_type->dimx)
                return ((void*)0);
            swiz |= s << component * 2;
            component++;
        }
        if (valid)
            return new_swizzle(swiz, component, value, loc);
    }

    return ((void*)0);
}

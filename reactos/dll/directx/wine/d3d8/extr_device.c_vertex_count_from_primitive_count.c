
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int D3DPRIMITIVETYPE ;
 int FIXME (char*,int) ;

__attribute__((used)) static UINT vertex_count_from_primitive_count(D3DPRIMITIVETYPE primitive_type, UINT primitive_count)
{
    switch (primitive_type)
    {
        case 131:
            return primitive_count;

        case 133:
            return primitive_count * 2;

        case 132:
            return primitive_count + 1;

        case 129:
            return primitive_count * 3;

        case 128:
        case 130:
            return primitive_count + 2;

        default:
            FIXME("Unhandled primitive type %#x.\n", primitive_type);
            return 0;
    }
}

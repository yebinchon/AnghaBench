
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cube_coord { ____Placeholder_cube_coord } cube_coord ;


 int ERR (char*) ;







__attribute__((used)) static float get_cube_coord(enum cube_coord coord, unsigned int x, unsigned int y, unsigned int size)
{
    switch (coord)
    {
        case 132:
            return x + 0.5f;
        case 131:
            return size - x - 0.5f;
        case 130:
            return y + 0.5f;
        case 129:
            return size - y - 0.5f;
        case 128:
            return 0.0f;
        case 133:
            return size;
       default:
           ERR("Unexpected coordinate value\n");
           return 0.0f;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLenum ;






int gl_component_size(GLenum type)
{
    switch (type) {
    case 129: return 1;
    case 128: return 2;
    case 130: return 4;
    }
    return 0;
}

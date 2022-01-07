
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLenum ;
int gl_format_components(GLenum format)
{
    switch (format) {
    case 135:
    case 134:
    case 137:
        return 1;
    case 133:
    case 128:
    case 136:
        return 2;
    case 132:
    case 129:
        return 3;
    case 131:
    case 130:
        return 4;
    }
    return 0;
}

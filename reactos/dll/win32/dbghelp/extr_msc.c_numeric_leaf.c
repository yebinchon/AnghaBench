
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIXME (char*,unsigned short) ;






 unsigned short LF_NUMERIC ;
__attribute__((used)) static int numeric_leaf(int* value, const unsigned short int* leaf)
{
    unsigned short int type = *leaf++;
    int length = 2;

    if (type < LF_NUMERIC)
    {
        *value = type;
    }
    else
    {
        switch (type)
        {
        case 144:
            length += 1;
            *value = *(const char*)leaf;
            break;

        case 132:
            length += 2;
            *value = *(const short*)leaf;
            break;

        case 129:
            length += 2;
            *value = *leaf;
            break;

        case 139:
            length += 4;
            *value = *(const int*)leaf;
            break;

        case 131:
            length += 4;
            *value = *(const unsigned int*)leaf;
            break;

        case 138:
        case 130:
     FIXME("Unsupported numeric leaf type %04x\n", type);
            length += 8;
            *value = 0;
            break;

        case 136:
     FIXME("Unsupported numeric leaf type %04x\n", type);
            length += 4;
            *value = 0;
            break;

        case 135:
     FIXME("Unsupported numeric leaf type %04x\n", type);
            length += 6;
            *value = 0;
            break;

        case 134:
     FIXME("Unsupported numeric leaf type %04x\n", type);
            length += 8;
            *value = 0;
            break;

        case 133:
     FIXME("Unsupported numeric leaf type %04x\n", type);
            length += 10;
            *value = 0;
            break;

        case 137:
     FIXME("Unsupported numeric leaf type %04x\n", type);
            length += 16;
            *value = 0;
            break;

        case 142:
     FIXME("Unsupported numeric leaf type %04x\n", type);
            length += 4;
            *value = 0;
            break;

        case 141:
     FIXME("Unsupported numeric leaf type %04x\n", type);
            length += 8;
            *value = 0;
            break;

        case 140:
     FIXME("Unsupported numeric leaf type %04x\n", type);
            length += 10;
            *value = 0;
            break;

        case 143:
     FIXME("Unsupported numeric leaf type %04x\n", type);
            length += 16;
            *value = 0;
            break;

        case 128:
     FIXME("Unsupported numeric leaf type %04x\n", type);
            length += 2 + *leaf;
            *value = 0;
            break;

        default:
     FIXME("Unknown numeric leaf type %04x\n", type);
            *value = 0;
            break;
        }
    }

    return length;
}

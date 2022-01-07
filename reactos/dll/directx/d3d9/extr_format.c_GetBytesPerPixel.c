
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int D3DFORMAT ;
DWORD GetBytesPerPixel(D3DFORMAT Format)
{
    switch (Format)
    {
    case 141:
    case 178:
        return 1;

    case 140:
    case 133:
    case 185:
    case 179:
    case 174:
    case 132:
        return 2;

    case 139:
        return 3;

    case 173:
    case 129:
    case 184:
    case 177:
    case 131:
    case 156:
    case 183:
        return 4;

    case 187:
        return 8;


    case 146:
    case 148:
    case 180:
        return 1;

    case 175:
    case 176:
        return 2;


    case 134:
    case 149:
        return 2;

    case 130:
    case 144:
    case 135:
    case 182:
        return 4;


    case 137:
        return 1;

    case 169:
    case 171:
    case 170:
        return 2;

    case 164:
    case 167:
    case 165:
    case 166:
    case 163:
    case 168:
    case 162:
        return 4;


    case 150:
        return 2;


    case 152:
        return 2;
    case 151:
        return 4;


    case 145:
        return 8;


    case 143:
        return 2;
    case 155:
        return 4;
    case 186:
        return 8;


    case 142:
        return 4;
    case 154:
        return 8;
    case 181:
        return 16;

    case 172:
        return 2;



    case 136:
    case 138:
    case 128:
    case 153:
        return 2;

    case 161:
        return 0xFFFFFFF8;

    case 160:
    case 159:
    case 158:
    case 157:
        return 0xFFFFFFF0;

    case 147:
        return 8;

    default:
        return 0;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
__attribute__((used)) static uint16_t usage2bits(uint16_t usage)
{
    switch (usage) {
        case 140: return 0x01;
        case 138: return 0x02;
        case 139: return 0x04;

        case 135: return 0x10;
        case 136: return 0x20;
        case 137: return 0x40;
        case 132: return 0x80;
        case 133: return 0x100;
        case 131: return 0x200;
        case 129: return 0x400;
        case 128: return 0x800;
        case 134: return 0x1000;
        case 130: return 0x2000;


    };
    return 0;
}

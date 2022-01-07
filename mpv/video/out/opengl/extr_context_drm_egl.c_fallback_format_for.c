
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;







__attribute__((used)) static uint32_t fallback_format_for(uint32_t format)
{
    switch (format) {
    case 128:
        return 130;
    case 130:
        return 128;
    case 129:
        return 131;
    case 131:
        return 129;
    default:
        return 0;
    }
}

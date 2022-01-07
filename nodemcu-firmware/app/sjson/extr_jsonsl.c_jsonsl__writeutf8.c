
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ADD_OUTPUT (int) ;

__attribute__((used)) static char *
jsonsl__writeutf8(uint32_t pt, char *out)
{


    if (pt < 0x80) {
        *out = (char)(pt); out++;;
    } else if (pt < 0x800) {
        *out = (char)((pt >> 6) | 0xC0); out++;;
        *out = (char)((pt & 0x3F) | 0x80); out++;;
    } else if (pt < 0x10000) {
        *out = (char)((pt >> 12) | 0xE0); out++;;
        *out = (char)(((pt >> 6) & 0x3F) | 0x80); out++;;
        *out = (char)((pt & 0x3F) | 0x80); out++;;
    } else {
        *out = (char)((pt >> 18) | 0xF0); out++;;
        *out = (char)(((pt >> 12) & 0x3F) | 0x80); out++;;
        *out = (char)(((pt >> 6) & 0x3F) | 0x80); out++;;
        *out = (char)((pt & 0x3F) | 0x80); out++;;
    }
    return out;

}

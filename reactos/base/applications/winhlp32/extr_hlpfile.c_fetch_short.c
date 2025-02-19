
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;



__attribute__((used)) static short fetch_short(const BYTE** ptr)
{
    short ret;

    if (*(*ptr) & 1)
    {
        ret = (*(const unsigned short*)(*ptr) - 0x8000) / 2;
        (*ptr) += 2;
    }
    else
    {
        ret = (*(const unsigned char*)(*ptr) - 0x80) / 2;
        (*ptr)++;
    }
    return ret;
}

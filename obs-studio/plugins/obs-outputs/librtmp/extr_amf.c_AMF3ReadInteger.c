
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int AMF3_INTEGER_MAX ;

int
AMF3ReadInteger(const char *data, int32_t *valp)
{
    int i = 0;
    int32_t val = 0;

    while (i <= 2)
    {

        if (data[i] & 0x80)
        {

            val <<= 7;
            val |= (data[i] & 0x7f);
            i++;
        }
        else
        {
            break;
        }
    }

    if (i > 2)
    {

        val <<= 8;
        val |= data[3];


        if (val > AMF3_INTEGER_MAX)
            val -= (1 << 29);
    }
    else
    {

        val <<= 7;
        val |= data[i];
    }

    *valp = val;

    return i > 2 ? 4 : i + 1;
}

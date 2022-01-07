
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
utf8_seq_length(char byte)
{
    unsigned char u = (unsigned char) byte;
    if (u < 0x80) return 1;

    if (0x80 <= u && u <= 0xBF)
    {


        return 0;
    }
    else if (u == 0xC0 || u == 0xC1)
    {

        return 0;
    }
    else if (0xC2 <= u && u <= 0xDF)
    {

        return 2;
    }
    else if (0xE0 <= u && u <= 0xEF)
    {

        return 3;
    }
    else if (0xF0 <= u && u <= 0xF4)
    {

        return 4;
    }
    else
    {


        return 0;
    }
}

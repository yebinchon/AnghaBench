
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int NN_SWS_UTF8_FRAGMENT ;
 int NN_SWS_UTF8_INVALID ;
 int nn_assert (int ) ;

__attribute__((used)) static int nn_utf8_code_point (const uint8_t *buffer, size_t len)
{

    if (!buffer || !len)
        return NN_SWS_UTF8_FRAGMENT;


    if (buffer [0] <= 0x7F)
        return 1;



    if (buffer [0] < 0xC2)
        return NN_SWS_UTF8_INVALID;


    if (buffer [0] <= 0xDF) {
        if (len < 2)
            return NN_SWS_UTF8_FRAGMENT;

        else if ((buffer [1] & 0xC0) != 0x80)
            return NN_SWS_UTF8_INVALID;
        else
            return 2;
    }


    if (buffer [0] <= 0xEF) {

        if (len < 2)
            return NN_SWS_UTF8_FRAGMENT;

        else if (buffer [0] == 0xE0 && (buffer [1] < 0xA0 || buffer [1] == 0x80))
            return NN_SWS_UTF8_INVALID;

        else if (buffer [0] == 0xED && buffer [1] >= 0xA0)
            return NN_SWS_UTF8_INVALID;

        else if (len < 3)
            return NN_SWS_UTF8_FRAGMENT;

        else if ((buffer [1] & 0xC0) != 0x80 || (buffer [2] & 0xC0) != 0x80)
            return NN_SWS_UTF8_INVALID;
        else
            return 3;
    }




    if (buffer [0] <= 0xF4) {

        if (len < 2)
            return NN_SWS_UTF8_FRAGMENT;

        else if (buffer [0] == 0xF0 && buffer [1] < 0x90)
            return NN_SWS_UTF8_INVALID;

        else if (buffer [0] == 0xF4 && buffer [1] >= 0x90)
            return NN_SWS_UTF8_INVALID;

        else if (len < 4)
            return NN_SWS_UTF8_FRAGMENT;

        else if ((buffer [1] & 0xC0) != 0x80 ||
            (buffer [2] & 0xC0) != 0x80 ||
            (buffer [3] & 0xC0) != 0x80)
            return NN_SWS_UTF8_INVALID;
        else
            return 4;
    }



    if (buffer [0] >= 0xF5)
        return NN_SWS_UTF8_INVALID;


    nn_assert (0);
}

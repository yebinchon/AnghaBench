
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AMF_NUMBER ;
 int memcpy (char*,double*,int) ;

char *
AMF_EncodeNumber(char *output, char *outend, double dVal)
{
    if (output+1+8 > outend)
        return ((void*)0);

    *output++ = AMF_NUMBER;



    memcpy(output, &dVal, 8);
    return output+8;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (double*,char const*,int) ;

double
AMF_DecodeNumber(const char *data)
{
    double dVal;


    memcpy(&dVal, data, 8);
    return dVal;
}

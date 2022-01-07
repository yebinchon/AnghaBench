
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int assert (int) ;
 double av_int2double (int ) ;
 double av_int2float (int ) ;
 int ebml_parse_uint (int *,int) ;

__attribute__((used)) static double ebml_parse_float(uint8_t *data, int length)
{
    assert(length == 0 || length == 4 || length == 8);
    uint64_t i = ebml_parse_uint(data, length);
    if (length == 4)
        return av_int2float(i);
    else
        return av_int2double(i);
}

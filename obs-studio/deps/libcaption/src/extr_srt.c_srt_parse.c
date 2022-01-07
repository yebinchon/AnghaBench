
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vtt_t ;
typedef int utf8_char_t ;


 int * _vtt_parse (int const*,size_t,int) ;

vtt_t* srt_parse(const utf8_char_t* data, size_t size)
{
    return _vtt_parse(data, size, 1);
}

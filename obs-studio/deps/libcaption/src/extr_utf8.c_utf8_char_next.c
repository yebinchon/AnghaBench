
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int utf8_char_t ;


 int utf8_char_length (int const*) ;

const utf8_char_t* utf8_char_next(const utf8_char_t* c)
{
    const utf8_char_t* n = c + utf8_char_length(c);
    return n == c ? 0 : n;
}

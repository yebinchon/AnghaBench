
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char utf8_char_t ;



size_t _utf8_newline(const utf8_char_t* data)
{
    if ('\r' == data[0]) {
        return '\n' == data[1] ? 2 : 1;
    } else if ('\n' == data[0]) {
        return '\r' == data[1] ? 2 : 1;
    } else {
        return 0;
    }
}

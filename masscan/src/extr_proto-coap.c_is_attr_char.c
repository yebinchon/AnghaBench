
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isalnum (unsigned int) ;

__attribute__((used)) static bool
is_attr_char(unsigned c)
{
    switch (c) {
        case '!': case '#': case '$': case '&': case '+': case '-': case '.':
        case '^': case '_': case '`': case '|': case '~':
            return 1;
        default:
            return isalnum(c) != 0;
    }
}

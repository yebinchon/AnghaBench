
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Py_ssize_t ;


 scalar_t__ _chk_byteorder (char const) ;

__attribute__((used)) static int
_check_for_commastring(const char *type, Py_ssize_t len)
{
    Py_ssize_t i;
    int sqbracket;


    if ((type[0] >= '0'
                && type[0] <= '9')
            || ((len > 1)
                && _chk_byteorder(type[0])
                && (type[1] >= '0'
                && type[1] <= '9'))) {
        return 1;
    }

    if (((len > 1)
                && (type[0] == '('
                && type[1] == ')'))
            || ((len > 3)
                && _chk_byteorder(type[0])
                && (type[1] == '('
                && type[2] == ')'))) {
        return 1;
    }




    sqbracket = 0;
    for (i = 0; i < len; i++) {
        switch (type[i]) {
            case ',':
                if (sqbracket == 0) {
                    return 1;
                }
                break;
            case '[':
                ++sqbracket;
                break;
            case ']':
                --sqbracket;
                break;
        }
    }
    return 0;
}

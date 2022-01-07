
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _tmp_string_t ;


 scalar_t__ _append_char (int *,char const) ;

__attribute__((used)) static int
_append_str(_tmp_string_t *s, char const *p)
{
    for (; *p != '\0'; p++) {
        if (_append_char(s, *p) < 0) {
            return -1;
        }
    }
    return 0;
}

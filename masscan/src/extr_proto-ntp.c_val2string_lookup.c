
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Val2String {char const* string; unsigned int value; } ;



__attribute__((used)) static const char *
val2string_lookup(const struct Val2String *list, unsigned val)
{
    unsigned i;
    for (i=0; list[i].string; i++) {
        if (list[i].value == val)
            return list[i].string;
    }
    return 0;
}

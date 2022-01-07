
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const Class ;

int _re1_5_classmatch(const char *pc, const char *sp)
{

    int is_positive = (pc[-1] == Class);
    int cnt = *pc++;
    while (cnt--) {
        if (*sp >= *pc && *sp <= pc[1]) return is_positive;
        pc += 2;
    }
    return !is_positive;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int _re1_5_namedclassmatch(const char *pc, const char *sp)
{

    int off = (*pc >> 5) & 1;
    if ((*pc | 0x20) == 'd') {
        if (!(*sp >= '0' && *sp <= '9')) {
            off ^= 1;
        }
    } else if ((*pc | 0x20) == 's') {
        if (!(*sp == ' ' || (*sp >= '\t' && *sp <= '\r'))) {
            off ^= 1;
        }
    } else {
        if (!((*sp >= 'A' && *sp <= 'Z') || (*sp >= 'a' && *sp <= 'z') || (*sp >= '0' && *sp <= '9') || *sp == '_')) {
            off ^= 1;
        }
    }
    return off;
}

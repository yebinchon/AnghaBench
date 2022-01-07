
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
long long int strtoll(const char *nptr, char **endptr, int base) {
    long long val = 0;

    for (; *nptr; nptr++) {
        int v = *nptr;
        if ('0' <= v && v <= '9') {
            v -= '0';
        } else if ('A' <= v && v <= 'Z') {
            v -= 'A' - 10;
        } else if ('a' <= v && v <= 'z') {
            v -= 'a' - 10;
        } else {
            break;
        }
        if (v >= base) {
            break;
        }
        val = val * base + v;
    }

    *endptr = (char*)nptr;

    return val;
}

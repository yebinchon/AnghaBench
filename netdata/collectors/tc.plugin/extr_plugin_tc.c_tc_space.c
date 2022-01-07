
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int tc_space(char c) {
    switch(c) {
    case ' ':
    case '\t':
    case '\r':
    case '\n':
        return 1;

    default:
        return 0;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int value_is_zinit(const char *value) {
    return (value && *value == 'z' && *++value == 'i' && *++value == 'n' && *++value == 'i' && *++value == 't' && *++value == '\0');
}

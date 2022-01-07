
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ unichar ;


 scalar_t__ unichar_islower (scalar_t__) ;

unichar unichar_toupper(unichar c) {
    if (unichar_islower(c)) {
        return c - 0x20;
    }
    return c;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Allowed_Whitespace_bits ;

__attribute__((used)) static int is_allowed_whitespace(unsigned c) {
    return c == ' ' || (c < 0x20 && (Allowed_Whitespace_bits & (1 << (31 - c))));
}

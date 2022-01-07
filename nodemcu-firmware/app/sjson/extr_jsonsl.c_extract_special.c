
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* Special_Table ;

__attribute__((used)) static unsigned extract_special(unsigned c) {
    return (c < 0x80) ? Special_Table[c & 0xff] : 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int get_num(int num, int shift) {
 char x = (char) ((num >> shift) & 0xff);
 return (int)(x<<shift);
}

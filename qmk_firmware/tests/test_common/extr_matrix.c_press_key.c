
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int* matrix ;

void press_key(uint8_t col, uint8_t row) { matrix[row] |= 1 << col; }

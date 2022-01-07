
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PORTB ;
 int* col_bit ;
 int mask ;

__attribute__((used)) static
inline void pull_column(int col) {
  PORTB = col_bit[col] | (PORTB & ~mask);
}

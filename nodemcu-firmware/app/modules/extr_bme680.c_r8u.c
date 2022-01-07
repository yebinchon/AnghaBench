
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int r8u_n (int ,int,int *) ;

__attribute__((used)) static uint8_t r8u(uint8_t reg) {
 uint8_t ret[1];
 r8u_n(reg, 1, ret);
 return ret[0];
}

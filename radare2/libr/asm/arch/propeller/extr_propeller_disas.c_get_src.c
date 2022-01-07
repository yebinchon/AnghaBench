
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
typedef int ut16 ;



__attribute__((used)) static ut16 get_src (ut32 instr) {
 return instr & 0x1FF;
}

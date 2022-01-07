
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int R_BIT_SET (int *,int) ;
 int R_BIT_UNSET (int *,int) ;

__attribute__((used)) static void writebit (ut8 *dst, int i, bool c) {
 int byte = i / 8;
 int bit = (i % 8);

dst += byte;
 if (c) {

  R_BIT_SET (dst , bit);
 } else {

  R_BIT_UNSET (dst , bit);
 }
}

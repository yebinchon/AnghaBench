
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int COLS_MASK ;
 int IC2 ;
 int PCA9555_PORT0 ;
 int PCA9555_PORT1 ;
 int PORT0_COLS_MASK ;
 int PORT1_COLS_MASK ;
 int pca9555_readPins (int ,int ) ;

__attribute__((used)) static uint16_t read_cols(void) {
  uint16_t state_1 = pca9555_readPins(IC2, PCA9555_PORT0);
  uint16_t state_2 = pca9555_readPins(IC2, PCA9555_PORT1);

  uint16_t state = ((state_1 & PORT0_COLS_MASK) << 3) | ((state_2 & PORT1_COLS_MASK));


  return (~state) & COLS_MASK;
}

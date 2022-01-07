
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int IC1 ;
 int IC2 ;
 int PCA9555_PORT0 ;
 int PCA9555_PORT1 ;
 int pca9555_readPins (int ,int ) ;

__attribute__((used)) static uint32_t read_cols(void) {
  uint32_t state_1 = pca9555_readPins(IC2, PCA9555_PORT0);
  uint32_t state_2 = pca9555_readPins(IC2, PCA9555_PORT1);
  uint32_t state_3 = pca9555_readPins(IC1, PCA9555_PORT1);



  uint32_t state = (((state_3 & 0b00001111) << 14) | ((state_2 & 0b00111111) << 8) | state_1);
  return (~state) & 0b111111111111111111;
}

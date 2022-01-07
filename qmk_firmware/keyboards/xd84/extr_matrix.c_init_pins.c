
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALL_INPUT ;
 int IC1 ;
 int IC2 ;
 int PCA9555_PORT0 ;
 int PCA9555_PORT1 ;
 int pca9555_set_config (int ,int ,int ) ;

__attribute__((used)) static void init_pins(void) {

  pca9555_set_config(IC2, PCA9555_PORT0, ALL_INPUT);
  pca9555_set_config(IC2, PCA9555_PORT1, ALL_INPUT);


  pca9555_set_config(IC1, PCA9555_PORT0, ALL_INPUT);
}

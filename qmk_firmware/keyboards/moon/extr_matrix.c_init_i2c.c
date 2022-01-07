
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IC1 ;
 int IC2 ;
 int pca9555_init (int ) ;

__attribute__((used)) static void init_i2c(void) {
  pca9555_init(IC1);
  pca9555_init(IC2);
}

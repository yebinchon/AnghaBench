
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ALL_HIGH ;
 int ALL_INPUT ;
 int IC1 ;
 int PCA9555_PORT0 ;
 int pca9555_set_config (int ,int ,int) ;
 int pca9555_set_output (int ,int ,int) ;

__attribute__((used)) static void select_row(uint8_t row) {


  uint8_t pin = row;
  uint8_t mask = 1 << pin;

  pca9555_set_output(IC1, PCA9555_PORT0, ALL_HIGH & (~mask));
  pca9555_set_config(IC1, PCA9555_PORT0, ALL_INPUT & (~mask));
}

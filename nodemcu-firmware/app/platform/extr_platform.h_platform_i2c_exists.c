
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NUM_I2C ;

__attribute__((used)) static inline int platform_i2c_exists( unsigned id ) { return id < NUM_I2C; }


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int i2c_register_board_info (int ,int ,int ) ;
 int nbg460n_i2c_device ;
 int nbg460n_i2c_devs ;
 int platform_device_register (int *) ;

__attribute__((used)) static void nbg460n_i2c_init(void)
{

 platform_device_register(&nbg460n_i2c_device);

 i2c_register_board_info(0, nbg460n_i2c_devs,
    ARRAY_SIZE(nbg460n_i2c_devs));
}

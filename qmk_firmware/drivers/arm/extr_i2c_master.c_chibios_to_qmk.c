
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msg_t ;
typedef int i2c_status_t ;



 int I2C_STATUS_ERROR ;
 int I2C_STATUS_SUCCESS ;
 int I2C_STATUS_TIMEOUT ;


__attribute__((used)) static i2c_status_t chibios_to_qmk(const msg_t* status) {
    switch (*status) {
        case 129:
            return I2C_STATUS_SUCCESS;
        case 128:
            return I2C_STATUS_TIMEOUT;

        default:
            return I2C_STATUS_ERROR;
    }
}

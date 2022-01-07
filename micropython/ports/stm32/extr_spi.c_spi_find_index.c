
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mp_obj_t ;
struct TYPE_3__ {int * spi; } ;


 int MICROPY_HW_SPI1_NAME ;
 int MICROPY_HW_SPI2_NAME ;
 int MICROPY_HW_SPI3_NAME ;
 int MICROPY_HW_SPI4_NAME ;
 int MICROPY_HW_SPI5_NAME ;
 int MICROPY_HW_SPI6_NAME ;
 int MP_ARRAY_SIZE (TYPE_1__*) ;
 int mp_obj_get_int (int ) ;
 scalar_t__ mp_obj_is_str (int ) ;
 int mp_obj_new_exception_msg_varg (int *,char*,...) ;
 char* mp_obj_str_get_str (int ) ;
 int mp_type_ValueError ;
 int nlr_raise (int ) ;
 TYPE_1__* spi_obj ;
 scalar_t__ strcmp (char const*,int ) ;

int spi_find_index(mp_obj_t id) {
    if (mp_obj_is_str(id)) {

        const char *port = mp_obj_str_get_str(id);
        if (0) {
        }
        nlr_raise(mp_obj_new_exception_msg_varg(&mp_type_ValueError,
            "SPI(%s) doesn't exist", port));
    } else {

        int spi_id = mp_obj_get_int(id);
        if (spi_id >= 1 && spi_id <= MP_ARRAY_SIZE(spi_obj)
            && spi_obj[spi_id - 1].spi != ((void*)0)) {
            return spi_id;
        }
        nlr_raise(mp_obj_new_exception_msg_varg(&mp_type_ValueError,
            "SPI(%d) doesn't exist", spi_id));
    }
}

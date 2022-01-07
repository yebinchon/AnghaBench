
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int libcaption_stauts_t ;
struct TYPE_3__ {int user_identifier; int user_data_type_code; int user_data; } ;
typedef TYPE_1__ cea708_t ;


 int LIBCAPTION_ERROR ;
 int LIBCAPTION_OK ;
 int cea708_parse_user_data_type_strcture (int const*,size_t,int *) ;

libcaption_stauts_t cea708_parse_h262(const uint8_t* data, size_t size, cea708_t* cea708)
{
    if (!data || 7 > size) {
        return LIBCAPTION_ERROR;
    }

    cea708->user_identifier = ((data[0] << 24) | (data[1] << 16) | (data[2] << 8) | data[3]);
    cea708->user_data_type_code = data[4];
    if (3 == cea708->user_data_type_code) {
        cea708_parse_user_data_type_strcture(data + 5, size - 5, &cea708->user_data);
    }

    return LIBCAPTION_OK;
}

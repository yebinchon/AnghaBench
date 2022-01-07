
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* cc_data; } ;
typedef TYPE_2__ user_data_t ;
typedef int uint16_t ;
typedef int cea708_cc_type_t ;
struct TYPE_4__ {int cc_valid; int cc_data; int cc_type; } ;



uint16_t cea708_cc_data(user_data_t* data, int index, int* valid, cea708_cc_type_t* type)
{
    (*valid) = data->cc_data[index].cc_valid;
    (*type) = data->cc_data[index].cc_type;
    return data->cc_data[index].cc_data;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef int cea708_cc_type_t ;
struct TYPE_3__ {int member_0; int member_1; int member_3; int member_2; } ;
typedef TYPE_1__ cc_data_t ;



cc_data_t cea708_encode_cc_data(int cc_valid, cea708_cc_type_t type, uint16_t cc_data)
{
    cc_data_t data = { 0x1F, cc_valid, type, cc_data };
    return data;
}

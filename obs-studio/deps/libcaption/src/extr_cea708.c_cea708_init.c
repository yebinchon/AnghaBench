
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int process_cc_data_flag; int em_data; scalar_t__ cc_count; scalar_t__ additional_data_flag; scalar_t__ process_em_data_flag; } ;
struct TYPE_6__ {int user_data_type_code; double timestamp; TYPE_1__ user_data; scalar_t__ directv_user_data_length; int user_identifier; int provider; int country; } ;
typedef TYPE_2__ cea708_t ;


 int GA94 ;
 int country_united_states ;
 int memset (TYPE_2__*,int ,int) ;
 int t35_provider_atsc ;

int cea708_init(cea708_t* cea708, double timestamp)
{
    memset(cea708, 0, sizeof(cea708_t));
    cea708->country = country_united_states;
    cea708->provider = t35_provider_atsc;
    cea708->user_identifier = GA94;
    cea708->user_data_type_code = 3;
    cea708->directv_user_data_length = 0;
    cea708->user_data.process_em_data_flag = 0;
    cea708->user_data.process_cc_data_flag = 1;
    cea708->user_data.additional_data_flag = 0;
    cea708->user_data.em_data = 0xFF;
    cea708->user_data.cc_count = 0;
    cea708->timestamp = timestamp;
    return 1;
}

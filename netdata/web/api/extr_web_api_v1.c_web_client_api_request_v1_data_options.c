
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ hash; scalar_t__ value; scalar_t__ name; } ;


 TYPE_1__* api_v1_data_options ;
 char* mystrsep (char**,char*) ;
 scalar_t__ simple_hash (char*) ;
 int strcmp (char*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

inline uint32_t web_client_api_request_v1_data_options(char *o) {
    uint32_t ret = 0x00000000;
    char *tok;

    while(o && *o && (tok = mystrsep(&o, ", |"))) {
        if(!*tok) continue;

        uint32_t hash = simple_hash(tok);
        int i;
        for(i = 0; api_v1_data_options[i].name ; i++) {
            if (unlikely(hash == api_v1_data_options[i].hash && !strcmp(tok, api_v1_data_options[i].name))) {
                ret |= api_v1_data_options[i].value;
                break;
            }
        }
    }

    return ret;
}

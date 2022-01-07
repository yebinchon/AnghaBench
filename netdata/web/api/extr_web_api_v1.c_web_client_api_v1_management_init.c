
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int api_secret ;
 int get_mgmt_api_key () ;

void web_client_api_v1_management_init(void) {
 api_secret = get_mgmt_api_key();
}

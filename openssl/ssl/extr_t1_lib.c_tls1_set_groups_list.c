
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {scalar_t__ nidcnt; int nid_arr; } ;
typedef TYPE_1__ nid_cb_st ;


 int CONF_parse_list (char const*,char,int,int ,TYPE_1__*) ;
 int nid_cb ;
 int tls1_set_groups (int **,size_t*,int ,scalar_t__) ;

int tls1_set_groups_list(uint16_t **pext, size_t *pextlen, const char *str)
{

    nid_cb_st ncb;
    ncb.nidcnt = 0;
    if (!CONF_parse_list(str, ':', 1, nid_cb, &ncb))
        return 0;
    if (pext == ((void*)0))
        return 1;
    return tls1_set_groups(pext, pextlen, ncb.nid_arr, ncb.nidcnt);



}

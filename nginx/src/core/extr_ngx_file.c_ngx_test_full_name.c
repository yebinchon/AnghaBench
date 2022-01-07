
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char u_char ;
struct TYPE_3__ {char* data; int len; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_int_t ;


 int NGX_DECLINED ;
 int NGX_OK ;

__attribute__((used)) static ngx_int_t
ngx_test_full_name(ngx_str_t *name)
{
    if (name->data[0] == '/') {
        return NGX_OK;
    }

    return NGX_DECLINED;


}

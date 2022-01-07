
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* XMLRPC_VALUE ;
struct TYPE_4__ {char const* str; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ str; } ;


 scalar_t__ xmlrpc_base64 ;

const char* XMLRPC_GetValueBase64(XMLRPC_VALUE value) {
    return ((value && value->type == xmlrpc_base64) ? value->str.str : 0);
}

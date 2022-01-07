
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* XMLRPC_VALUE ;
struct TYPE_3__ {scalar_t__ type; int i; } ;


 scalar_t__ xmlrpc_int ;

int XMLRPC_GetValueInt(XMLRPC_VALUE value) {
    return ((value && value->type == xmlrpc_int) ? value->i : 0);
}

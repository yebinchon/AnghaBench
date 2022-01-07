
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* XMLRPC_VALUE ;
struct TYPE_3__ {scalar_t__ type; int i; } ;


 scalar_t__ xmlrpc_boolean ;

int XMLRPC_GetValueBoolean(XMLRPC_VALUE value) {
    return ((value && value->type == xmlrpc_boolean) ? value->i : 0);
}

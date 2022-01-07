
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* XMLRPC_VALUE ;
struct TYPE_3__ {scalar_t__ type; double d; } ;


 scalar_t__ xmlrpc_double ;

double XMLRPC_GetValueDouble(XMLRPC_VALUE value) {
    return ((value && value->type == xmlrpc_double) ? value->d : 0);
}

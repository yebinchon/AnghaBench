
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
typedef TYPE_1__* XMLRPC_VALUE ;
struct TYPE_3__ {scalar_t__ type; int i; } ;


 scalar_t__ xmlrpc_datetime ;

time_t XMLRPC_GetValueDateTime(XMLRPC_VALUE value) {
    return (time_t)((value && value->type == xmlrpc_datetime) ? value->i : 0);
}

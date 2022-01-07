
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* XMLRPC_VALUE ;
struct TYPE_4__ {int len; } ;
struct TYPE_5__ {TYPE_1__ str; } ;



int XMLRPC_GetValueStringLen(XMLRPC_VALUE value) {
    return ((value) ? value->str.len : 0);
}

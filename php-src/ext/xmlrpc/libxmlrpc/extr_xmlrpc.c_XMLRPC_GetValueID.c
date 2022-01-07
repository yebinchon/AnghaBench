
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* XMLRPC_VALUE ;
struct TYPE_4__ {scalar_t__ str; scalar_t__ len; } ;
struct TYPE_5__ {TYPE_1__ id; } ;



const char* XMLRPC_GetValueID(XMLRPC_VALUE value) {
    return (const char*)((value && value->id.len) ? value->id.str : 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* XMLRPC_OPTIONS ;
typedef int XMLRPC_CASE ;
struct TYPE_3__ {int id_case; } ;


 TYPE_1__* XMLRPC_GetDefaultOptions () ;

XMLRPC_CASE XMLRPC_GetDefaultIdCase() {
   XMLRPC_OPTIONS options = XMLRPC_GetDefaultOptions();
   return options->id_case;
}

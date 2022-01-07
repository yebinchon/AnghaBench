
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char const* extnodename; } ;
struct TYPE_6__ {int (* nodeRead ) (TYPE_2__*) ;int node_size; } ;
typedef TYPE_1__ ExtensibleNodeMethods ;
typedef TYPE_2__ ExtensibleNode ;


 int ERROR ;
 TYPE_1__* GetExtensibleNodeMethods (char const*,int) ;
 int READ_DONE () ;
 int READ_TEMP_LOCALS () ;
 int T_ExtensibleNode ;
 int elog (int ,char*) ;
 int length ;
 scalar_t__ newNode (int ,int ) ;
 char* nullable_string (int ,int ) ;
 int pg_strtok (int *) ;
 int stub1 (TYPE_2__*) ;
 int token ;

__attribute__((used)) static ExtensibleNode *
_readExtensibleNode(void)
{
 const ExtensibleNodeMethods *methods;
 ExtensibleNode *local_node;
 const char *extnodename;

 READ_TEMP_LOCALS();

 token = pg_strtok(&length);
 token = pg_strtok(&length);

 extnodename = nullable_string(token, length);
 if (!extnodename)
  elog(ERROR, "extnodename has to be supplied");
 methods = GetExtensibleNodeMethods(extnodename, 0);

 local_node = (ExtensibleNode *) newNode(methods->node_size,
           T_ExtensibleNode);
 local_node->extnodename = extnodename;


 methods->nodeRead(local_node);

 READ_DONE();
}

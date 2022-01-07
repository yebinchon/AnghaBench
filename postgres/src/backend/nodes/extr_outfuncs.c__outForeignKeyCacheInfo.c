
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nkeys; } ;
typedef int StringInfo ;
typedef TYPE_1__ ForeignKeyCacheInfo ;


 int WRITE_ATTRNUMBER_ARRAY (int ,int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_ARRAY (int ,int ) ;
 int WRITE_OID_FIELD (int ) ;
 int confkey ;
 int confrelid ;
 int conkey ;
 int conoid ;
 int conpfeqop ;
 int conrelid ;
 int nkeys ;

__attribute__((used)) static void
_outForeignKeyCacheInfo(StringInfo str, const ForeignKeyCacheInfo *node)
{
 WRITE_NODE_TYPE("FOREIGNKEYCACHEINFO");

 WRITE_OID_FIELD(conoid);
 WRITE_OID_FIELD(conrelid);
 WRITE_OID_FIELD(confrelid);
 WRITE_INT_FIELD(nkeys);
 WRITE_ATTRNUMBER_ARRAY(conkey, node->nkeys);
 WRITE_ATTRNUMBER_ARRAY(confkey, node->nkeys);
 WRITE_OID_ARRAY(conpfeqop, node->nkeys);
}

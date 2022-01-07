
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int AppendRelInfo ;


 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int WRITE_UINT_FIELD (int ) ;
 int child_relid ;
 int child_reltype ;
 int parent_relid ;
 int parent_reloid ;
 int parent_reltype ;
 int translated_vars ;

__attribute__((used)) static void
_outAppendRelInfo(StringInfo str, const AppendRelInfo *node)
{
 WRITE_NODE_TYPE("APPENDRELINFO");

 WRITE_UINT_FIELD(parent_relid);
 WRITE_UINT_FIELD(child_relid);
 WRITE_OID_FIELD(parent_reltype);
 WRITE_OID_FIELD(child_reltype);
 WRITE_NODE_FIELD(translated_vars);
 WRITE_OID_FIELD(parent_reloid);
}

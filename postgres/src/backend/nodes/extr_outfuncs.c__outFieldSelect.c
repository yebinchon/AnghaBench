
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int FieldSelect ;


 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int arg ;
 int fieldnum ;
 int resultcollid ;
 int resulttype ;
 int resulttypmod ;

__attribute__((used)) static void
_outFieldSelect(StringInfo str, const FieldSelect *node)
{
 WRITE_NODE_TYPE("FIELDSELECT");

 WRITE_NODE_FIELD(arg);
 WRITE_INT_FIELD(fieldnum);
 WRITE_OID_FIELD(resulttype);
 WRITE_INT_FIELD(resulttypmod);
 WRITE_OID_FIELD(resultcollid);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int FieldStore ;


 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int arg ;
 int fieldnums ;
 int newvals ;
 int resulttype ;

__attribute__((used)) static void
_outFieldStore(StringInfo str, const FieldStore *node)
{
 WRITE_NODE_TYPE("FIELDSTORE");

 WRITE_NODE_FIELD(arg);
 WRITE_NODE_FIELD(newvals);
 WRITE_NODE_FIELD(fieldnums);
 WRITE_OID_FIELD(resulttype);
}

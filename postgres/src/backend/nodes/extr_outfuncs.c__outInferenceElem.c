
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int InferenceElem ;


 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int expr ;
 int infercollid ;
 int inferopclass ;

__attribute__((used)) static void
_outInferenceElem(StringInfo str, const InferenceElem *node)
{
 WRITE_NODE_TYPE("INFERENCEELEM");

 WRITE_NODE_FIELD(expr);
 WRITE_OID_FIELD(infercollid);
 WRITE_OID_FIELD(inferopclass);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int NestLoopParam ;


 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int paramno ;
 int paramval ;

__attribute__((used)) static void
_outNestLoopParam(StringInfo str, const NestLoopParam *node)
{
 WRITE_NODE_TYPE("NESTLOOPPARAM");

 WRITE_INT_FIELD(paramno);
 WRITE_NODE_FIELD(paramval);
}

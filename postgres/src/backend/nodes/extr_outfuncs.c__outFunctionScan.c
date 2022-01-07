
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Scan ;
typedef int FunctionScan ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outScanInfo (int ,int const*) ;
 int funcordinality ;
 int functions ;

__attribute__((used)) static void
_outFunctionScan(StringInfo str, const FunctionScan *node)
{
 WRITE_NODE_TYPE("FUNCTIONSCAN");

 _outScanInfo(str, (const Scan *) node);

 WRITE_NODE_FIELD(functions);
 WRITE_BOOL_FIELD(funcordinality);
}

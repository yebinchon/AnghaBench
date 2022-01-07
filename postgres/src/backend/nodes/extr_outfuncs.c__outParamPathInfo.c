
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int ParamPathInfo ;


 int WRITE_BITMAPSET_FIELD (int ) ;
 int WRITE_FLOAT_FIELD (int ,char*) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int ppi_clauses ;
 int ppi_req_outer ;
 int ppi_rows ;

__attribute__((used)) static void
_outParamPathInfo(StringInfo str, const ParamPathInfo *node)
{
 WRITE_NODE_TYPE("PARAMPATHINFO");

 WRITE_BITMAPSET_FIELD(ppi_req_outer);
 WRITE_FLOAT_FIELD(ppi_rows, "%.0f");
 WRITE_NODE_FIELD(ppi_clauses);
}

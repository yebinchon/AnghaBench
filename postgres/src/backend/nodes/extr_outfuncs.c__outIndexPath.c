
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Path ;
typedef int IndexPath ;


 int ScanDirection ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_FLOAT_FIELD (int ,char*) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outPathInfo (int ,int const*) ;
 int indexclauses ;
 int indexinfo ;
 int indexorderbycols ;
 int indexorderbys ;
 int indexscandir ;
 int indexselectivity ;
 int indextotalcost ;

__attribute__((used)) static void
_outIndexPath(StringInfo str, const IndexPath *node)
{
 WRITE_NODE_TYPE("INDEXPATH");

 _outPathInfo(str, (const Path *) node);

 WRITE_NODE_FIELD(indexinfo);
 WRITE_NODE_FIELD(indexclauses);
 WRITE_NODE_FIELD(indexorderbys);
 WRITE_NODE_FIELD(indexorderbycols);
 WRITE_ENUM_FIELD(indexscandir, ScanDirection);
 WRITE_FLOAT_FIELD(indextotalcost, "%.2f");
 WRITE_FLOAT_FIELD(indexselectivity, "%.4f");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Path ;
typedef int LockRowsPath ;


 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outPathInfo (int ,int const*) ;
 int epqParam ;
 int rowMarks ;
 int subpath ;

__attribute__((used)) static void
_outLockRowsPath(StringInfo str, const LockRowsPath *node)
{
 WRITE_NODE_TYPE("LOCKROWSPATH");

 _outPathInfo(str, (const Path *) node);

 WRITE_NODE_FIELD(subpath);
 WRITE_NODE_FIELD(rowMarks);
 WRITE_INT_FIELD(epqParam);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int RawStmt ;


 int WRITE_INT_FIELD (int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int stmt ;
 int stmt_len ;
 int stmt_location ;

__attribute__((used)) static void
_outRawStmt(StringInfo str, const RawStmt *node)
{
 WRITE_NODE_TYPE("RAWSTMT");

 WRITE_NODE_FIELD(stmt);
 WRITE_LOCATION_FIELD(stmt_location);
 WRITE_INT_FIELD(stmt_len);
}

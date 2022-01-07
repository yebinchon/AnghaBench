
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RawStmt ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int stmt ;
 int stmt_len ;
 int stmt_location ;

__attribute__((used)) static bool
_equalRawStmt(const RawStmt *a, const RawStmt *b)
{
 COMPARE_NODE_FIELD(stmt);
 COMPARE_LOCATION_FIELD(stmt_location);
 COMPARE_LOCATION_FIELD(stmt_len);

 return 1;
}

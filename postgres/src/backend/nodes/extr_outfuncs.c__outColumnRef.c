
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int ColumnRef ;


 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int fields ;
 int location ;

__attribute__((used)) static void
_outColumnRef(StringInfo str, const ColumnRef *node)
{
 WRITE_NODE_TYPE("COLUMNREF");

 WRITE_NODE_FIELD(fields);
 WRITE_LOCATION_FIELD(location);
}

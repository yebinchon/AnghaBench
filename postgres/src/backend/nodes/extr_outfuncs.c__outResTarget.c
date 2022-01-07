
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int ResTarget ;


 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_STRING_FIELD (int ) ;
 int indirection ;
 int location ;
 int name ;
 int val ;

__attribute__((used)) static void
_outResTarget(StringInfo str, const ResTarget *node)
{
 WRITE_NODE_TYPE("RESTARGET");

 WRITE_STRING_FIELD(name);
 WRITE_NODE_FIELD(indirection);
 WRITE_NODE_FIELD(val);
 WRITE_LOCATION_FIELD(location);
}

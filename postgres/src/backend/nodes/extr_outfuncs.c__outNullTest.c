
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int NullTest ;


 int NullTestType ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int arg ;
 int argisrow ;
 int location ;
 int nulltesttype ;

__attribute__((used)) static void
_outNullTest(StringInfo str, const NullTest *node)
{
 WRITE_NODE_TYPE("NULLTEST");

 WRITE_NODE_FIELD(arg);
 WRITE_ENUM_FIELD(nulltesttype, NullTestType);
 WRITE_BOOL_FIELD(argisrow);
 WRITE_LOCATION_FIELD(location);
}

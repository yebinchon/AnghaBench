
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int ParamRef ;


 int WRITE_INT_FIELD (int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int location ;
 int number ;

__attribute__((used)) static void
_outParamRef(StringInfo str, const ParamRef *node)
{
 WRITE_NODE_TYPE("PARAMREF");

 WRITE_INT_FIELD(number);
 WRITE_LOCATION_FIELD(location);
}

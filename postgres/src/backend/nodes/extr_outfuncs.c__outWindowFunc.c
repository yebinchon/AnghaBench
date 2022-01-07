
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WindowFunc ;
typedef int StringInfo ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int WRITE_UINT_FIELD (int ) ;
 int aggfilter ;
 int args ;
 int inputcollid ;
 int location ;
 int winagg ;
 int wincollid ;
 int winfnoid ;
 int winref ;
 int winstar ;
 int wintype ;

__attribute__((used)) static void
_outWindowFunc(StringInfo str, const WindowFunc *node)
{
 WRITE_NODE_TYPE("WINDOWFUNC");

 WRITE_OID_FIELD(winfnoid);
 WRITE_OID_FIELD(wintype);
 WRITE_OID_FIELD(wincollid);
 WRITE_OID_FIELD(inputcollid);
 WRITE_NODE_FIELD(args);
 WRITE_NODE_FIELD(aggfilter);
 WRITE_UINT_FIELD(winref);
 WRITE_BOOL_FIELD(winstar);
 WRITE_BOOL_FIELD(winagg);
 WRITE_LOCATION_FIELD(location);
}

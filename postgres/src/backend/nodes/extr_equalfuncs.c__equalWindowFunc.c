
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WindowFunc ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
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

__attribute__((used)) static bool
_equalWindowFunc(const WindowFunc *a, const WindowFunc *b)
{
 COMPARE_SCALAR_FIELD(winfnoid);
 COMPARE_SCALAR_FIELD(wintype);
 COMPARE_SCALAR_FIELD(wincollid);
 COMPARE_SCALAR_FIELD(inputcollid);
 COMPARE_NODE_FIELD(args);
 COMPARE_NODE_FIELD(aggfilter);
 COMPARE_SCALAR_FIELD(winref);
 COMPARE_SCALAR_FIELD(winstar);
 COMPARE_SCALAR_FIELD(winagg);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}

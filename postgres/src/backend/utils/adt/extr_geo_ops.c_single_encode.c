
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float8 ;
typedef int StringInfo ;


 int appendStringInfoString (int ,char*) ;
 char* float8out_internal (int ) ;
 int pfree (char*) ;

__attribute__((used)) static void
single_encode(float8 x, StringInfo str)
{
 char *xstr = float8out_internal(x);

 appendStringInfoString(str, xstr);
 pfree(xstr);
}

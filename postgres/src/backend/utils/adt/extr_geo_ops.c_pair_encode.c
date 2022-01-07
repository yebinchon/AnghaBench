
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float8 ;
typedef int StringInfo ;


 int appendStringInfo (int ,char*,char*,char*) ;
 char* float8out_internal (int ) ;
 int pfree (char*) ;

__attribute__((used)) static void
pair_encode(float8 x, float8 y, StringInfo str)
{
 char *xstr = float8out_internal(x);
 char *ystr = float8out_internal(y);

 appendStringInfo(str, "%s,%s", xstr, ystr);
 pfree(xstr);
 pfree(ystr);
}

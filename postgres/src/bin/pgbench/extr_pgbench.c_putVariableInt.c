
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int PgBenchValue ;
typedef int CState ;


 int putVariableValue (int *,char const*,char*,int *) ;
 int setIntValue (int *,int ) ;

__attribute__((used)) static bool
putVariableInt(CState *st, const char *context, char *name, int64 value)
{
 PgBenchValue val;

 setIntValue(&val, value);
 return putVariableValue(st, context, name, &val);
}

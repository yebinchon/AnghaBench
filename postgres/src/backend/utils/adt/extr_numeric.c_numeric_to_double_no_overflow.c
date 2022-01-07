
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Numeric ;


 char* DatumGetCString (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int ERRCODE_INVALID_TEXT_REPRESENTATION ;
 int ERROR ;
 int NumericGetDatum (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*,char*) ;
 int numeric_out ;
 int pfree (char*) ;
 double strtod (char*,char**) ;

__attribute__((used)) static double
numeric_to_double_no_overflow(Numeric num)
{
 char *tmp;
 double val;
 char *endptr;

 tmp = DatumGetCString(DirectFunctionCall1(numeric_out,
             NumericGetDatum(num)));


 val = strtod(tmp, &endptr);
 if (*endptr != '\0')
 {

  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
     errmsg("invalid input syntax for type %s: \"%s\"",
      "double precision", tmp)));
 }

 pfree(tmp);

 return val;
}

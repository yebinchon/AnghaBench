
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NumericVar ;


 int ERRCODE_INVALID_TEXT_REPRESENTATION ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*,char*) ;
 char* get_str_from_var (int const*) ;
 int pfree (char*) ;
 double strtod (char*,char**) ;

__attribute__((used)) static double
numericvar_to_double_no_overflow(const NumericVar *var)
{
 char *tmp;
 double val;
 char *endptr;

 tmp = get_str_from_var(var);


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


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double float8 ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int RESERV ;
 int UNITS ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 double get_float8_infinity () ;

__attribute__((used)) static float8
NonFiniteTimestampTzPart(int type, int unit, char *lowunits,
       bool isNegative, bool isTz)
{
 if ((type != UNITS) && (type != RESERV))
 {
  if (isTz)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("timestamp with time zone units \"%s\" not recognized",
       lowunits)));
  else
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("timestamp units \"%s\" not recognized",
       lowunits)));
 }

 switch (unit)
 {

  case 139:
  case 137:
  case 133:
  case 136:
  case 143:
  case 148:
  case 135:
  case 134:
  case 129:
  case 146:
  case 142:
  case 145:
  case 132:
  case 130:
  case 131:
   return 0.0;


  case 128:
  case 147:
  case 149:
  case 138:
  case 140:
  case 141:
  case 144:
   if (isNegative)
    return -get_float8_infinity();
   else
    return get_float8_infinity();

  default:
   if (isTz)
    ereport(ERROR,
      (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("timestamp with time zone units \"%s\" not supported",
        lowunits)));
   else
    ereport(ERROR,
      (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("timestamp units \"%s\" not supported",
        lowunits)));
   return 0.0;
 }
}

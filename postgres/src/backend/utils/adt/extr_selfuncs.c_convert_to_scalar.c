
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Datum ;
 int convert_bytea_to_scalar (int ,double*,int ,double*,int ,double*) ;
 double convert_network_to_scalar (int ,int,int*) ;
 double convert_numeric_to_scalar (int ,int,int*) ;
 char* convert_string_datum (int ,int,int,int*) ;
 int convert_string_to_scalar (char*,double*,char*,double*,char*,double*) ;
 double convert_timevalue_to_scalar (int ,int,int*) ;
 int pfree (char*) ;

__attribute__((used)) static bool
convert_to_scalar(Datum value, Oid valuetypid, Oid collid, double *scaledvalue,
      Datum lobound, Datum hibound, Oid boundstypid,
      double *scaledlobound, double *scaledhibound)
{
 bool failure = 0;
 switch (valuetypid)
 {



  case 161:
  case 152:
  case 151:
  case 150:
  case 155:
  case 154:
  case 145:
  case 144:
  case 136:
  case 137:
  case 138:
  case 139:
  case 143:
  case 134:
  case 142:
  case 141:
  case 135:
  case 140:
   *scaledvalue = convert_numeric_to_scalar(value, valuetypid,
              &failure);
   *scaledlobound = convert_numeric_to_scalar(lobound, boundstypid,
                &failure);
   *scaledhibound = convert_numeric_to_scalar(hibound, boundstypid,
                &failure);
   return !failure;




  case 158:
  case 160:
  case 128:
  case 133:
  case 146:
   {
    char *valstr = convert_string_datum(value, valuetypid,
                collid, &failure);
    char *lostr = convert_string_datum(lobound, boundstypid,
               collid, &failure);
    char *histr = convert_string_datum(hibound, boundstypid,
               collid, &failure);






    if (failure)
     return 0;

    convert_string_to_scalar(valstr, scaledvalue,
           lostr, scaledlobound,
           histr, scaledhibound);
    pfree(valstr);
    pfree(lostr);
    pfree(histr);
    return 1;
   }




  case 159:
   {

    if (boundstypid != 159)
     return 0;
    convert_bytea_to_scalar(value, scaledvalue,
          lobound, scaledlobound,
          hibound, scaledhibound);
    return 1;
   }




  case 131:
  case 130:
  case 156:
  case 149:
  case 132:
  case 129:
   *scaledvalue = convert_timevalue_to_scalar(value, valuetypid,
                &failure);
   *scaledlobound = convert_timevalue_to_scalar(lobound, boundstypid,
               &failure);
   *scaledhibound = convert_timevalue_to_scalar(hibound, boundstypid,
               &failure);
   return !failure;




  case 153:
  case 157:
  case 147:
  case 148:
   *scaledvalue = convert_network_to_scalar(value, valuetypid,
              &failure);
   *scaledlobound = convert_network_to_scalar(lobound, boundstypid,
                &failure);
   *scaledhibound = convert_network_to_scalar(hibound, boundstypid,
                &failure);
   return !failure;
 }

 *scaledvalue = *scaledlobound = *scaledhibound = 0;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int timestamp ;
struct TYPE_4__ {long buf; long digits; long ndigits; } ;
typedef TYPE_1__ numeric ;
typedef int interval ;
typedef int int64 ;
typedef enum ECPGttype { ____Placeholder_ECPGttype } ECPGttype ;
typedef enum COMPAT_MODE { ____Placeholder_COMPAT_MODE } COMPAT_MODE ;
typedef int decimal ;
typedef int date ;
typedef int PGresult ;
typedef int NumericDigit ;
 int PGTYPESnumeric_free (TYPE_1__*) ;
 TYPE_1__* PGTYPESnumeric_from_asc (char*,int *) ;
 int PQftype (int const*,int) ;
 int PQgetisnull (int const*,int,int) ;
 char* PQgetvalue (int const*,int,int) ;
 int PQnfields (int const*) ;
 int ecpg_sqlda_align_add_size (long,int,long,long*,long*) ;
 int sqlda_dynamic_type (int ,int) ;
 int strlen (char*) ;

__attribute__((used)) static long
sqlda_common_total_size(const PGresult *res, int row, enum COMPAT_MODE compat, long offset)
{
 int sqld = PQnfields(res);
 int i;
 long next_offset;


 for (i = 0; i < sqld; i++)
 {
  enum ECPGttype type = sqlda_dynamic_type(PQftype(res, i), compat);

  switch (type)
  {
   case 135:
   case 128:
    ecpg_sqlda_align_add_size(offset, sizeof(short), sizeof(short), &offset, &next_offset);
    break;
   case 140:
   case 131:
    ecpg_sqlda_align_add_size(offset, sizeof(int), sizeof(int), &offset, &next_offset);
    break;
   case 138:
   case 130:
    ecpg_sqlda_align_add_size(offset, sizeof(long), sizeof(long), &offset, &next_offset);
    break;
   case 137:
   case 129:
    ecpg_sqlda_align_add_size(offset, sizeof(long long), sizeof(long long), &offset, &next_offset);
    break;
   case 146:
    ecpg_sqlda_align_add_size(offset, sizeof(bool), sizeof(bool), &offset, &next_offset);
    break;
   case 141:
    ecpg_sqlda_align_add_size(offset, sizeof(float), sizeof(float), &offset, &next_offset);
    break;
   case 142:
    ecpg_sqlda_align_add_size(offset, sizeof(double), sizeof(double), &offset, &next_offset);
    break;
   case 143:
    ecpg_sqlda_align_add_size(offset, sizeof(int), sizeof(decimal), &offset, &next_offset);
    break;
   case 136:
    ecpg_sqlda_align_add_size(offset, sizeof(NumericDigit *), sizeof(numeric), &offset, &next_offset);
    if (!PQgetisnull(res, row, i))
    {
     char *val = PQgetvalue(res, row, i);
     numeric *num;

     num = PGTYPESnumeric_from_asc(val, ((void*)0));
     if (!num)
      break;
     if (num->buf)
      ecpg_sqlda_align_add_size(next_offset, sizeof(int), num->digits - num->buf + num->ndigits, &offset, &next_offset);
     PGTYPESnumeric_free(num);
    }
    break;
   case 144:
    ecpg_sqlda_align_add_size(offset, sizeof(date), sizeof(date), &offset, &next_offset);
    break;
   case 133:
    ecpg_sqlda_align_add_size(offset, sizeof(int64), sizeof(timestamp), &offset, &next_offset);
    break;
   case 139:
    ecpg_sqlda_align_add_size(offset, sizeof(int64), sizeof(interval), &offset, &next_offset);
    break;
   case 145:
   case 132:
   case 134:
   default:
    {
     long datalen = strlen(PQgetvalue(res, row, i)) + 1;

     ecpg_sqlda_align_add_size(offset, sizeof(int), datalen, &offset, &next_offset);
     break;
    }
  }
  offset = next_offset;
 }
 return offset;
}

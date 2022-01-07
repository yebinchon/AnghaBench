
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* val; int len; } ;
struct TYPE_6__ {TYPE_1__ string; int numeric; int boolean; } ;
struct TYPE_7__ {int type; TYPE_2__ val; } ;
typedef TYPE_3__ JsonbValue ;
typedef int Datum ;


 int Assert (int) ;
 int ERROR ;
 int JGINFLAG_BOOL ;
 int JGINFLAG_KEY ;
 int JGINFLAG_NULL ;
 int JGINFLAG_NUM ;
 int JGINFLAG_STR ;
 int elog (int ,char*,int) ;




 int make_text_key (int ,char*,int) ;
 char* numeric_normalize (int ) ;
 int pfree (char*) ;
 int strlen (char*) ;

__attribute__((used)) static Datum
make_scalar_key(const JsonbValue *scalarVal, bool is_key)
{
 Datum item;
 char *cstr;

 switch (scalarVal->type)
 {
  case 130:
   Assert(!is_key);
   item = make_text_key(JGINFLAG_NULL, "", 0);
   break;
  case 131:
   Assert(!is_key);
   item = make_text_key(JGINFLAG_BOOL,
         scalarVal->val.boolean ? "t" : "f", 1);
   break;
  case 129:
   Assert(!is_key);
   cstr = numeric_normalize(scalarVal->val.numeric);
   item = make_text_key(JGINFLAG_NUM, cstr, strlen(cstr));
   pfree(cstr);
   break;
  case 128:
   item = make_text_key(is_key ? JGINFLAG_KEY : JGINFLAG_STR,
         scalarVal->val.string.val,
         scalarVal->val.string.len);
   break;
  default:
   elog(ERROR, "unrecognized jsonb scalar type: %d", scalarVal->type);
   item = 0;
   break;
 }

 return item;
}

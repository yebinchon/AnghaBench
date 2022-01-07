
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int tz; int typid; int value; } ;
struct TYPE_6__ {char* val; size_t len; } ;
struct TYPE_8__ {TYPE_2__ datetime; int boolean; scalar_t__ numeric; TYPE_1__ string; } ;
struct TYPE_9__ {int type; TYPE_3__ val; } ;
typedef int StringInfo ;
typedef TYPE_4__ JsonbValue ;
typedef int JEntry ;


 int ERROR ;
 int JENTRY_ISBOOL_FALSE ;
 int JENTRY_ISBOOL_TRUE ;
 int JENTRY_ISNULL ;
 short JENTRY_ISNUMERIC ;
 int JsonEncodeDateTime (char*,int ,int ,int *) ;
 int MAXDATELEN ;
 int VARSIZE_ANY (scalar_t__) ;
 int appendToBuffer (int ,char*,size_t) ;
 int elog (int ,char*) ;





 int numeric_is_nan (scalar_t__) ;
 short padBufferToInt (int ) ;
 size_t strlen (char*) ;

__attribute__((used)) static void
convertJsonbScalar(StringInfo buffer, JEntry *jentry, JsonbValue *scalarVal)
{
 int numlen;
 short padlen;

 switch (scalarVal->type)
 {
  case 130:
   *jentry = JENTRY_ISNULL;
   break;

  case 128:
   appendToBuffer(buffer, scalarVal->val.string.val, scalarVal->val.string.len);

   *jentry = scalarVal->val.string.len;
   break;

  case 129:

   if (numeric_is_nan(scalarVal->val.numeric))
   {
    appendToBuffer(buffer, "NaN", 3);
    *jentry = 3;
    break;
   }

   numlen = VARSIZE_ANY(scalarVal->val.numeric);
   padlen = padBufferToInt(buffer);

   appendToBuffer(buffer, (char *) scalarVal->val.numeric, numlen);

   *jentry = JENTRY_ISNUMERIC | (padlen + numlen);
   break;

  case 132:
   *jentry = (scalarVal->val.boolean) ?
    JENTRY_ISBOOL_TRUE : JENTRY_ISBOOL_FALSE;
   break;

  case 131:
   {
    char buf[MAXDATELEN + 1];
    size_t len;

    JsonEncodeDateTime(buf,
           scalarVal->val.datetime.value,
           scalarVal->val.datetime.typid,
           &scalarVal->val.datetime.tz);
    len = strlen(buf);
    appendToBuffer(buffer, buf, len);

    *jentry = len;
   }
   break;

  default:
   elog(ERROR, "invalid jsonb scalar type");
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int fn_oid; } ;
struct TYPE_8__ {TYPE_4__ recinfunc; } ;
struct TYPE_7__ {TYPE_2__ tuple; } ;
struct TYPE_9__ {int typmod; int typoid; TYPE_1__ u; int mcxt; } ;
typedef int PyObject ;
typedef TYPE_3__ PLyObToDatum ;
typedef int Datum ;


 int ERRCODE_INVALID_TEXT_REPRESENTATION ;
 int ERROR ;
 int F_RECORD_IN ;
 int InputFunctionCall (TYPE_4__*,char*,int ,int ) ;
 int OidIsValid (int ) ;
 char* PLyObject_AsString (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errhint (char*) ;
 int errmsg (char*,char*) ;
 int fmgr_info_cxt (int ,TYPE_4__*,int ) ;
 scalar_t__ isspace (unsigned char) ;

__attribute__((used)) static Datum
PLyString_ToComposite(PLyObToDatum *arg, PyObject *string, bool inarray)
{
 char *str;





 if (!OidIsValid(arg->u.tuple.recinfunc.fn_oid))
  fmgr_info_cxt(F_RECORD_IN, &arg->u.tuple.recinfunc, arg->mcxt);

 str = PLyObject_AsString(string);
 if (inarray)
 {
  char *ptr = str;


  while (*ptr && isspace((unsigned char) *ptr))
   ptr++;
  if (*ptr++ != '(')
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
      errmsg("malformed record literal: \"%s\"", str),
      errdetail("Missing left parenthesis."),
      errhint("To return a composite type in an array, return the composite type as a Python tuple, e.g., \"[('foo',)]\".")));
 }

 return InputFunctionCall(&arg->u.tuple.recinfunc,
        str,
        arg->typoid,
        arg->typmod);
}

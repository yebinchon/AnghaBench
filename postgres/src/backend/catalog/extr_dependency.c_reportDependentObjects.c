
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int flags; int const dependee; } ;
struct TYPE_9__ {int numrefs; TYPE_3__* extras; int * refs; } ;
struct TYPE_8__ {scalar_t__ len; char* data; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_2__ ObjectAddresses ;
typedef TYPE_3__ ObjectAddressExtra ;
typedef int ObjectAddress ;
typedef scalar_t__ DropBehavior ;


 int DEBUG2 ;
 int DEPFLAG_AUTO ;
 int DEPFLAG_EXTENSION ;
 int DEPFLAG_INTERNAL ;
 int DEPFLAG_IS_PART ;
 int DEPFLAG_ORIGINAL ;
 int DEPFLAG_PARTITION ;
 int DEPFLAG_SUBOBJECT ;
 scalar_t__ DROP_CASCADE ;
 scalar_t__ DROP_RESTRICT ;
 int ERRCODE_DEPENDENT_OBJECTS_STILL_EXIST ;
 int ERROR ;
 int LOG ;
 int MAX_REPORTED_DEPS ;
 int NOTICE ;
 int PERFORM_DELETION_QUIETLY ;
 int _ (char*) ;
 int appendStringInfo (TYPE_1__*,int ,...) ;
 int appendStringInfoChar (TYPE_1__*,char) ;
 int client_min_messages ;
 int ereport (int,int ) ;
 int errcode (int ) ;
 int errdetail (char*,char*) ;
 int errdetail_log (char*,char*) ;
 int errhint (char*,...) ;
 int errmsg (char*,...) ;
 int errmsg_internal (char*,char*) ;
 int errmsg_plural (char*,char*,int,int) ;
 char* getObjectDescription (int const*) ;
 int initStringInfo (TYPE_1__*) ;
 int log_min_messages ;
 int ngettext (char*,char*,int) ;
 int pfree (char*) ;

__attribute__((used)) static void
reportDependentObjects(const ObjectAddresses *targetObjects,
        DropBehavior behavior,
        int flags,
        const ObjectAddress *origObject)
{
 int msglevel = (flags & PERFORM_DELETION_QUIETLY) ? DEBUG2 : NOTICE;
 bool ok = 1;
 StringInfoData clientdetail;
 StringInfoData logdetail;
 int numReportedClient = 0;
 int numNotReportedClient = 0;
 int i;
 for (i = 0; i < targetObjects->numrefs; i++)
 {
  const ObjectAddressExtra *extra = &targetObjects->extras[i];

  if ((extra->flags & DEPFLAG_IS_PART) &&
   !(extra->flags & DEPFLAG_PARTITION))
  {
   const ObjectAddress *object = &targetObjects->refs[i];
   char *otherObjDesc = getObjectDescription(&extra->dependee);

   ereport(ERROR,
     (errcode(ERRCODE_DEPENDENT_OBJECTS_STILL_EXIST),
      errmsg("cannot drop %s because %s requires it",
       getObjectDescription(object), otherObjDesc),
      errhint("You can drop %s instead.", otherObjDesc)));
  }
 }
 if (behavior == DROP_CASCADE &&
  msglevel < client_min_messages &&
  (msglevel < log_min_messages || log_min_messages == LOG))
  return;
 initStringInfo(&clientdetail);
 initStringInfo(&logdetail);





 for (i = targetObjects->numrefs - 1; i >= 0; i--)
 {
  const ObjectAddress *obj = &targetObjects->refs[i];
  const ObjectAddressExtra *extra = &targetObjects->extras[i];
  char *objDesc;


  if (extra->flags & DEPFLAG_ORIGINAL)
   continue;


  if (extra->flags & DEPFLAG_SUBOBJECT)
   continue;

  objDesc = getObjectDescription(obj);






  if (extra->flags & (DEPFLAG_AUTO |
       DEPFLAG_INTERNAL |
       DEPFLAG_PARTITION |
       DEPFLAG_EXTENSION))
  {






   ereport(DEBUG2,
     (errmsg("drop auto-cascades to %s",
       objDesc)));
  }
  else if (behavior == DROP_RESTRICT)
  {
   char *otherDesc = getObjectDescription(&extra->dependee);

   if (numReportedClient < 100)
   {

    if (clientdetail.len != 0)
     appendStringInfoChar(&clientdetail, '\n');
    appendStringInfo(&clientdetail, _("%s depends on %s"),
         objDesc, otherDesc);
    numReportedClient++;
   }
   else
    numNotReportedClient++;

   if (logdetail.len != 0)
    appendStringInfoChar(&logdetail, '\n');
   appendStringInfo(&logdetail, _("%s depends on %s"),
        objDesc, otherDesc);
   pfree(otherDesc);
   ok = 0;
  }
  else
  {
   if (numReportedClient < 100)
   {

    if (clientdetail.len != 0)
     appendStringInfoChar(&clientdetail, '\n');
    appendStringInfo(&clientdetail, _("drop cascades to %s"),
         objDesc);
    numReportedClient++;
   }
   else
    numNotReportedClient++;

   if (logdetail.len != 0)
    appendStringInfoChar(&logdetail, '\n');
   appendStringInfo(&logdetail, _("drop cascades to %s"),
        objDesc);
  }

  pfree(objDesc);
 }

 if (numNotReportedClient > 0)
  appendStringInfo(&clientdetail, ngettext("\nand %d other object "
             "(see server log for list)",
             "\nand %d other objects "
             "(see server log for list)",
             numNotReportedClient),
       numNotReportedClient);

 if (!ok)
 {
  if (origObject)
   ereport(ERROR,
     (errcode(ERRCODE_DEPENDENT_OBJECTS_STILL_EXIST),
      errmsg("cannot drop %s because other objects depend on it",
       getObjectDescription(origObject)),
      errdetail("%s", clientdetail.data),
      errdetail_log("%s", logdetail.data),
      errhint("Use DROP ... CASCADE to drop the dependent objects too.")));
  else
   ereport(ERROR,
     (errcode(ERRCODE_DEPENDENT_OBJECTS_STILL_EXIST),
      errmsg("cannot drop desired object(s) because other objects depend on them"),
      errdetail("%s", clientdetail.data),
      errdetail_log("%s", logdetail.data),
      errhint("Use DROP ... CASCADE to drop the dependent objects too.")));
 }
 else if (numReportedClient > 1)
 {
  ereport(msglevel,

    (errmsg_plural("drop cascades to %d other object",
          "drop cascades to %d other objects",
          numReportedClient + numNotReportedClient,
          numReportedClient + numNotReportedClient),
     errdetail("%s", clientdetail.data),
     errdetail_log("%s", logdetail.data)));
 }
 else if (numReportedClient == 1)
 {

  ereport(msglevel,
    (errmsg_internal("%s", clientdetail.data)));
 }

 pfree(clientdetail.data);
 pfree(logdetail.data);
}

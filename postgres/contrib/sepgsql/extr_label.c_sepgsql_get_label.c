
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int security_context_t ;
typedef int int32 ;
struct TYPE_3__ {int objectSubId; void* objectId; void* classId; } ;
typedef void* Oid ;
typedef TYPE_1__ ObjectAddress ;


 int ERRCODE_INTERNAL_ERROR ;
 int ERROR ;
 char* GetSecurityLabel (TYPE_1__*,int ) ;
 int PG_END_TRY () ;
 int PG_FINALLY () ;
 int PG_TRY () ;
 int SEPGSQL_LABEL_TAG ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int freecon (int ) ;
 char* pstrdup (int ) ;
 scalar_t__ security_check_context_raw (int ) ;
 scalar_t__ security_get_initial_context_raw (char*,int *) ;

char *
sepgsql_get_label(Oid classId, Oid objectId, int32 subId)
{
 ObjectAddress object;
 char *label;

 object.classId = classId;
 object.objectId = objectId;
 object.objectSubId = subId;

 label = GetSecurityLabel(&object, SEPGSQL_LABEL_TAG);
 if (!label || security_check_context_raw((security_context_t) label))
 {
  security_context_t unlabeled;

  if (security_get_initial_context_raw("unlabeled", &unlabeled) < 0)
   ereport(ERROR,
     (errcode(ERRCODE_INTERNAL_ERROR),
      errmsg("SELinux: failed to get initial security label: %m")));
  PG_TRY();
  {
   label = pstrdup(unlabeled);
  }
  PG_FINALLY();
  {
   freecon(unlabeled);
  }
  PG_END_TRY();
 }
 return label;
}

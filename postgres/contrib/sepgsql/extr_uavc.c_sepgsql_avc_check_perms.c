
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int uint16 ;
typedef int ObjectAddress ;


 char* GetSecurityLabel (int const*,int ) ;
 int SEPGSQL_LABEL_TAG ;
 int pfree (char*) ;
 int sepgsql_avc_check_perms_label (char*,int ,int ,char const*,int) ;

bool
sepgsql_avc_check_perms(const ObjectAddress *tobject,
      uint16 tclass, uint32 required,
      const char *audit_name,
      bool abort_on_violation)
{
 char *tcontext = GetSecurityLabel(tobject, SEPGSQL_LABEL_TAG);
 bool rc;

 rc = sepgsql_avc_check_perms_label(tcontext,
            tclass, required,
            audit_name, abort_on_violation);
 if (tcontext)
  pfree(tcontext);

 return rc;
}

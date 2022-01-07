
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint16 ;
typedef int security_context_t ;
typedef int security_class_t ;
struct TYPE_2__ {char* class_name; } ;


 int Assert (int) ;
 int ERRCODE_INTERNAL_ERROR ;
 int ERROR ;
 int PG_END_TRY () ;
 int PG_FINALLY () ;
 int PG_TRY () ;
 size_t SEPG_CLASS_MAX ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,char const*,char const*) ;
 int freecon (int ) ;
 char* pstrdup (int ) ;
 scalar_t__ security_compute_create_name_raw (int ,int ,int ,char const*,int *) ;
 TYPE_1__* selinux_catalog ;
 int string_to_security_class (char const*) ;

char *
sepgsql_compute_create(const char *scontext,
        const char *tcontext,
        uint16 tclass,
        const char *objname)
{
 security_context_t ncontext;
 security_class_t tclass_ex;
 const char *tclass_name;
 char *result;


 Assert(tclass < SEPG_CLASS_MAX);

 tclass_name = selinux_catalog[tclass].class_name;
 tclass_ex = string_to_security_class(tclass_name);





 if (security_compute_create_name_raw((security_context_t) scontext,
           (security_context_t) tcontext,
           tclass_ex,
           objname,
           &ncontext) < 0)
  ereport(ERROR,
    (errcode(ERRCODE_INTERNAL_ERROR),
     errmsg("SELinux could not compute a new context: "
      "scontext=%s tcontext=%s tclass=%s: %m",
      scontext, tcontext, tclass_name)));





 PG_TRY();
 {
  result = pstrdup(ncontext);
 }
 PG_FINALLY();
 {
  freecon(ncontext);
 }
 PG_END_TRY();

 return result;
}

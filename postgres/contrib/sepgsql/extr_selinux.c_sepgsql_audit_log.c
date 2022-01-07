
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef unsigned long uint32 ;
typedef size_t uint16 ;
struct TYPE_9__ {char* class_name; TYPE_1__* av; } ;
struct TYPE_8__ {int data; } ;
struct TYPE_7__ {char* av_name; } ;
typedef TYPE_2__ StringInfoData ;


 int Assert (int) ;
 int LOG ;
 size_t SEPG_CLASS_MAX ;
 int appendStringInfo (TYPE_2__*,char*,char const*,...) ;
 int appendStringInfoString (TYPE_2__*,char*) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ) ;
 int initStringInfo (TYPE_2__*) ;
 TYPE_3__* selinux_catalog ;

void
sepgsql_audit_log(bool denied,
      const char *scontext,
      const char *tcontext,
      uint16 tclass,
      uint32 audited,
      const char *audit_name)
{
 StringInfoData buf;
 const char *class_name;
 const char *av_name;
 int i;


 Assert(tclass < SEPG_CLASS_MAX);
 class_name = selinux_catalog[tclass].class_name;


 initStringInfo(&buf);
 appendStringInfo(&buf, "%s {",
      (denied ? "denied" : "allowed"));
 for (i = 0; selinux_catalog[tclass].av[i].av_name; i++)
 {
  if (audited & (1UL << i))
  {
   av_name = selinux_catalog[tclass].av[i].av_name;
   appendStringInfo(&buf, " %s", av_name);
  }
 }
 appendStringInfoString(&buf, " }");




 appendStringInfo(&buf, " scontext=%s tcontext=%s tclass=%s",
      scontext, tcontext, class_name);
 if (audit_name)
  appendStringInfo(&buf, " name=\"%s\"", audit_name);

 ereport(LOG, (errmsg("SELinux: %s", buf.data)));
}

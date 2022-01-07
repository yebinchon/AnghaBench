
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int tag; int namespace; } ;
typedef TYPE_2__ TocEntry ;
struct TYPE_9__ {TYPE_3__* ropt; } ;
struct TYPE_12__ {TYPE_1__ public; } ;
struct TYPE_11__ {int superuser; int disable_triggers; int dataOnly; } ;
typedef TYPE_3__ RestoreOptions ;
typedef TYPE_4__ ArchiveHandle ;


 int _becomeUser (TYPE_4__*,int ) ;
 int ahprintf (TYPE_4__*,char*,int ) ;
 int fmtQualifiedId (int ,int ) ;
 int pg_log_info (char*,int ) ;

__attribute__((used)) static void
_disableTriggersIfNecessary(ArchiveHandle *AH, TocEntry *te)
{
 RestoreOptions *ropt = AH->public.ropt;


 if (!ropt->dataOnly || !ropt->disable_triggers)
  return;

 pg_log_info("disabling triggers for %s", te->tag);







 _becomeUser(AH, ropt->superuser);




 ahprintf(AH, "ALTER TABLE %s DISABLE TRIGGER ALL;\n\n",
    fmtQualifiedId(te->namespace, te->tag));
}

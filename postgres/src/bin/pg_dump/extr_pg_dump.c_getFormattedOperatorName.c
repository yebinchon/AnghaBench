
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int name; TYPE_2__* namespace; } ;
struct TYPE_9__ {TYPE_3__ dobj; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_7__ {TYPE_1__ dobj; } ;
typedef TYPE_4__ OprInfo ;
typedef int Archive ;


 int atooid (char const*) ;
 TYPE_4__* findOprByOid (int ) ;
 int fmtId (int ) ;
 int pg_log_warning (char*,char const*) ;
 char* psprintf (char*,int ,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static char *
getFormattedOperatorName(Archive *fout, const char *oproid)
{
 OprInfo *oprInfo;


 if (strcmp(oproid, "0") == 0)
  return ((void*)0);

 oprInfo = findOprByOid(atooid(oproid));
 if (oprInfo == ((void*)0))
 {
  pg_log_warning("could not find operator with OID %s",
        oproid);
  return ((void*)0);
 }

 return psprintf("OPERATOR(%s.%s)",
     fmtId(oprInfo->dobj.namespace->dobj.name),
     oprInfo->dobj.name);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nsubxacts; int * xsub; } ;
typedef TYPE_1__ xl_xact_assignment ;
typedef int StringInfo ;


 int appendStringInfo (int ,char*,int ) ;
 int appendStringInfoString (int ,char*) ;

__attribute__((used)) static void
xact_desc_assignment(StringInfo buf, xl_xact_assignment *xlrec)
{
 int i;

 appendStringInfoString(buf, "subxacts:");

 for (i = 0; i < xlrec->nsubxacts; i++)
  appendStringInfo(buf, " %u", xlrec->xsub[i]);
}

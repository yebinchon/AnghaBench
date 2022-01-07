
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionId ;
typedef int StringInfo ;


 int appendStringInfo (int ,char*,int ) ;
 int appendStringInfoString (int ,char*) ;

__attribute__((used)) static void
xact_desc_subxacts(StringInfo buf, int nsubxacts, TransactionId *subxacts)
{
 int i;

 if (nsubxacts > 0)
 {
  appendStringInfoString(buf, "; subxacts:");
  for (i = 0; i < nsubxacts; i++)
   appendStringInfo(buf, " %u", subxacts[i]);
 }
}

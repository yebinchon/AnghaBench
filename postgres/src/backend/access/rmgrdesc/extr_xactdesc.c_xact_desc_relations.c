
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int RelFileNode ;


 int MAIN_FORKNUM ;
 int appendStringInfo (int ,char*,char*) ;
 int pfree (char*) ;
 char* relpathperm (int ,int ) ;

__attribute__((used)) static void
xact_desc_relations(StringInfo buf, char *label, int nrels,
     RelFileNode *xnodes)
{
 int i;

 if (nrels > 0)
 {
  appendStringInfo(buf, "; %s:", label);
  for (i = 0; i < nrels; i++)
  {
   char *path = relpathperm(xnodes[i], MAIN_FORKNUM);

   appendStringInfo(buf, " %s", path);
   pfree(path);
  }
 }
}

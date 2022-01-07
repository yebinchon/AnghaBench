
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numatts; int * attnames; int * attcollation; int * atttypnames; } ;
typedef TYPE_1__ TableInfo ;
typedef int PQExpBuffer ;
typedef int CollInfo ;
typedef int Archive ;


 scalar_t__ OidIsValid (int ) ;
 int appendPQExpBuffer (int ,char*,int ) ;
 int appendPQExpBufferChar (int ,char) ;
 int appendPQExpBufferStr (int ,char*) ;
 int createPQExpBuffer () ;
 int * findCollationByOid (int ) ;
 int fmtId (int ) ;
 int fmtQualifiedDumpable (int *) ;

__attribute__((used)) static PQExpBuffer
createDummyViewAsClause(Archive *fout, TableInfo *tbinfo)
{
 PQExpBuffer result = createPQExpBuffer();
 int j;

 appendPQExpBufferStr(result, "SELECT");

 for (j = 0; j < tbinfo->numatts; j++)
 {
  if (j > 0)
   appendPQExpBufferChar(result, ',');
  appendPQExpBufferStr(result, "\n    ");

  appendPQExpBuffer(result, "NULL::%s", tbinfo->atttypnames[j]);





  if (OidIsValid(tbinfo->attcollation[j]))
  {
   CollInfo *coll;

   coll = findCollationByOid(tbinfo->attcollation[j]);
   if (coll)
    appendPQExpBuffer(result, " COLLATE %s",
          fmtQualifiedDumpable(coll));
  }

  appendPQExpBuffer(result, " AS %s", fmtId(tbinfo->attnames[j]));
 }

 return result;
}

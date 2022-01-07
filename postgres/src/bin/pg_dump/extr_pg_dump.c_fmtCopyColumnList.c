
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int numatts; char** attnames; int* attisdropped; char* attgenerated; } ;
typedef TYPE_1__ TableInfo ;
struct TYPE_8__ {char const* data; } ;
typedef TYPE_2__* PQExpBuffer ;


 int appendPQExpBufferChar (TYPE_2__*,char) ;
 int appendPQExpBufferStr (TYPE_2__*,char*) ;
 char* fmtId (char*) ;

__attribute__((used)) static const char *
fmtCopyColumnList(const TableInfo *ti, PQExpBuffer buffer)
{
 int numatts = ti->numatts;
 char **attnames = ti->attnames;
 bool *attisdropped = ti->attisdropped;
 char *attgenerated = ti->attgenerated;
 bool needComma;
 int i;

 appendPQExpBufferChar(buffer, '(');
 needComma = 0;
 for (i = 0; i < numatts; i++)
 {
  if (attisdropped[i])
   continue;
  if (attgenerated[i])
   continue;
  if (needComma)
   appendPQExpBufferStr(buffer, ", ");
  appendPQExpBufferStr(buffer, fmtId(attnames[i]));
  needComma = 1;
 }

 if (!needComma)
  return "";

 appendPQExpBufferChar(buffer, ')');
 return buffer->data;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {char* name; } ;
struct TYPE_11__ {int nargs; int * argtypes; TYPE_1__ dobj; } ;
struct TYPE_13__ {TYPE_2__ aggfn; } ;
struct TYPE_12__ {char* data; } ;
typedef TYPE_3__ PQExpBufferData ;
typedef int Archive ;
typedef TYPE_4__ AggInfo ;


 int appendPQExpBuffer (TYPE_3__*,char*,char*,char*) ;
 int appendPQExpBufferChar (TYPE_3__*,char) ;
 int appendPQExpBufferStr (TYPE_3__*,char*) ;
 char* fmtId (char*) ;
 int free (char*) ;
 char* getFormattedTypeName (int *,int ,int ) ;
 int initPQExpBuffer (TYPE_3__*) ;
 int zeroAsOpaque ;

__attribute__((used)) static char *
format_aggregate_signature(AggInfo *agginfo, Archive *fout, bool honor_quotes)
{
 PQExpBufferData buf;
 int j;

 initPQExpBuffer(&buf);
 if (honor_quotes)
  appendPQExpBufferStr(&buf, fmtId(agginfo->aggfn.dobj.name));
 else
  appendPQExpBufferStr(&buf, agginfo->aggfn.dobj.name);

 if (agginfo->aggfn.nargs == 0)
  appendPQExpBufferStr(&buf, "(*)");
 else
 {
  appendPQExpBufferChar(&buf, '(');
  for (j = 0; j < agginfo->aggfn.nargs; j++)
  {
   char *typname;

   typname = getFormattedTypeName(fout, agginfo->aggfn.argtypes[j],
             zeroAsOpaque);

   appendPQExpBuffer(&buf, "%s%s",
         (j > 0) ? ", " : "",
         typname);
   free(typname);
  }
  appendPQExpBufferChar(&buf, ')');
 }
 return buf.data;
}

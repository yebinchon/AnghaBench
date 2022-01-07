
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int name; } ;
struct TYPE_11__ {int nargs; int * argtypes; TYPE_1__ dobj; } ;
struct TYPE_10__ {char* data; } ;
typedef TYPE_2__ PQExpBufferData ;
typedef TYPE_3__ FuncInfo ;
typedef int Archive ;


 int appendPQExpBuffer (TYPE_2__*,char*,int ) ;
 int appendPQExpBufferChar (TYPE_2__*,char) ;
 int appendPQExpBufferStr (TYPE_2__*,char*) ;
 int fmtId (int ) ;
 int free (char*) ;
 char* getFormattedTypeName (int *,int ,int ) ;
 int initPQExpBuffer (TYPE_2__*) ;
 int zeroAsOpaque ;

__attribute__((used)) static char *
format_function_signature(Archive *fout, FuncInfo *finfo, bool honor_quotes)
{
 PQExpBufferData fn;
 int j;

 initPQExpBuffer(&fn);
 if (honor_quotes)
  appendPQExpBuffer(&fn, "%s(", fmtId(finfo->dobj.name));
 else
  appendPQExpBuffer(&fn, "%s(", finfo->dobj.name);
 for (j = 0; j < finfo->nargs; j++)
 {
  char *typname;

  if (j > 0)
   appendPQExpBufferStr(&fn, ", ");

  typname = getFormattedTypeName(fout, finfo->argtypes[j],
            zeroAsOpaque);
  appendPQExpBufferStr(&fn, typname);
  free(typname);
 }
 appendPQExpBufferChar(&fn, ')');
 return fn.data;
}

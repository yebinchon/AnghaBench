
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char const* name; } ;
struct TYPE_10__ {int * argtypes; TYPE_1__ dobj; } ;
struct TYPE_9__ {char* data; } ;
typedef TYPE_2__ PQExpBufferData ;
typedef int Oid ;
typedef TYPE_3__ FuncInfo ;
typedef int Archive ;





 int appendPQExpBuffer (TYPE_2__*,char*,char*,...) ;
 int appendPQExpBufferChar (TYPE_2__*,char) ;
 int atooid (char*) ;
 char* fmtId (char const*) ;
 int free (char*) ;
 char* getFormattedTypeName (int *,int ,int ) ;
 int initPQExpBuffer (TYPE_2__*) ;
 int pg_log_warning (char*) ;
 int zeroAsOpaque ;

__attribute__((used)) static char *
format_function_arguments_old(Archive *fout,
         FuncInfo *finfo, int nallargs,
         char **allargtypes,
         char **argmodes,
         char **argnames)
{
 PQExpBufferData fn;
 int j;

 initPQExpBuffer(&fn);
 appendPQExpBuffer(&fn, "%s(", fmtId(finfo->dobj.name));
 for (j = 0; j < nallargs; j++)
 {
  Oid typid;
  char *typname;
  const char *argmode;
  const char *argname;

  typid = allargtypes ? atooid(allargtypes[j]) : finfo->argtypes[j];
  typname = getFormattedTypeName(fout, typid, zeroAsOpaque);

  if (argmodes)
  {
   switch (argmodes[j][0])
   {
    case 130:
     argmode = "";
     break;
    case 128:
     argmode = "OUT ";
     break;
    case 129:
     argmode = "INOUT ";
     break;
    default:
     pg_log_warning("bogus value in proargmodes array");
     argmode = "";
     break;
   }
  }
  else
   argmode = "";

  argname = argnames ? argnames[j] : (char *) ((void*)0);
  if (argname && argname[0] == '\0')
   argname = ((void*)0);

  appendPQExpBuffer(&fn, "%s%s%s%s%s",
        (j > 0) ? ", " : "",
        argmode,
        argname ? fmtId(argname) : "",
        argname ? " " : "",
        typname);
  free(typname);
 }
 appendPQExpBufferChar(&fn, ')');
 return fn.data;
}

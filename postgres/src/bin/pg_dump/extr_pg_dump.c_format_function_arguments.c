
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int name; } ;
struct TYPE_10__ {scalar_t__ nargs; TYPE_1__ dobj; } ;
struct TYPE_9__ {char* data; } ;
typedef TYPE_2__ PQExpBufferData ;
typedef TYPE_3__ FuncInfo ;


 int appendPQExpBuffer (TYPE_2__*,char*,char*) ;
 int appendPQExpBufferStr (TYPE_2__*,char*) ;
 char* fmtId (int ) ;
 int initPQExpBuffer (TYPE_2__*) ;

__attribute__((used)) static char *
format_function_arguments(FuncInfo *finfo, char *funcargs, bool is_agg)
{
 PQExpBufferData fn;

 initPQExpBuffer(&fn);
 appendPQExpBufferStr(&fn, fmtId(finfo->dobj.name));
 if (is_agg && finfo->nargs == 0)
  appendPQExpBufferStr(&fn, "(*)");
 else
  appendPQExpBuffer(&fn, "(%s)", funcargs);
 return fn.data;
}

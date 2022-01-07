
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int call ;
struct TYPE_3__ {char* pyname; scalar_t__ proname; int * code; int globals; int mcxt; int src; int statics; } ;
typedef int PyObject ;
typedef TYPE_1__ PLyProcedure ;


 int ERROR ;
 int MemoryContextStrdup (int ,char*) ;
 int NAMEDATALEN ;
 int PLy_elog (int ,char*,...) ;
 int PLy_interp_globals ;
 char* PLy_procedure_munge_source (char*,char const*) ;
 int PyDict_Copy (int ) ;
 int PyDict_New () ;
 int PyDict_SetItemString (int ,char*,int ) ;
 int * PyRun_String (char*,int ,int ,int *) ;
 int * Py_CompileString (char*,char*,int ) ;
 int Py_DECREF (int *) ;
 int Py_eval_input ;
 int Py_file_input ;
 int elog (int ,char*) ;
 int pfree (char*) ;
 int snprintf (char*,int,char*,char*) ;

void
PLy_procedure_compile(PLyProcedure *proc, const char *src)
{
 PyObject *crv = ((void*)0);
 char *msrc;

 proc->globals = PyDict_Copy(PLy_interp_globals);





 proc->statics = PyDict_New();
 if (!proc->statics)
  PLy_elog(ERROR, ((void*)0));
 PyDict_SetItemString(proc->globals, "SD", proc->statics);




 msrc = PLy_procedure_munge_source(proc->pyname, src);

 proc->src = MemoryContextStrdup(proc->mcxt, msrc);
 crv = PyRun_String(msrc, Py_file_input, proc->globals, ((void*)0));
 pfree(msrc);

 if (crv != ((void*)0))
 {
  int clen;
  char call[NAMEDATALEN + 256];

  Py_DECREF(crv);




  clen = snprintf(call, sizeof(call), "%s()", proc->pyname);
  if (clen < 0 || clen >= sizeof(call))
   elog(ERROR, "string would overflow buffer");
  proc->code = Py_CompileString(call, "<string>", Py_eval_input);
  if (proc->code != ((void*)0))
   return;
 }

 if (proc->proname)
  PLy_elog(ERROR, "could not compile PL/Python function \"%s\"",
     proc->proname);
 else
  PLy_elog(ERROR, "could not compile anonymous PL/Python code block");
}

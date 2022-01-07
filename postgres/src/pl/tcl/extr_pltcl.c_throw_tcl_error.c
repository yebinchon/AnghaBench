
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Tcl_Interp ;


 int ERRCODE_EXTERNAL_ROUTINE_EXCEPTION ;
 int ERROR ;
 int TCL_GLOBAL_ONLY ;
 int Tcl_GetStringResult (int *) ;
 int Tcl_GetVar (int *,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcontext (char*,char*,char const*) ;
 int errmsg (char*,char*) ;
 char* pstrdup (char*) ;
 char* utf_u2e (int ) ;

__attribute__((used)) static void
throw_tcl_error(Tcl_Interp *interp, const char *proname)
{







 char *emsg;
 char *econtext;

 emsg = pstrdup(utf_u2e(Tcl_GetStringResult(interp)));
 econtext = utf_u2e(Tcl_GetVar(interp, "errorInfo", TCL_GLOBAL_ONLY));
 ereport(ERROR,
   (errcode(ERRCODE_EXTERNAL_ROUTINE_EXCEPTION),
    errmsg("%s", emsg),
    errcontext("%s\nin PL/Tcl function \"%s\"",
      econtext, proname)));
}

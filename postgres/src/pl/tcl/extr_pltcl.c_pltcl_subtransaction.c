
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Tcl_Obj ;
typedef int Tcl_Interp ;
typedef int ResourceOwner ;
typedef int MemoryContext ;
typedef int ClientData ;


 int BeginInternalSubTransaction (int *) ;
 int CurrentMemoryContext ;
 int CurrentResourceOwner ;
 int MemoryContextSwitchTo (int ) ;
 int ReleaseCurrentSubTransaction () ;
 int RollbackAndReleaseCurrentSubTransaction () ;
 int TCL_ERROR ;
 int Tcl_EvalObjEx (int *,int * const,int ) ;
 int Tcl_WrongNumArgs (int *,int,int * const*,char*) ;

__attribute__((used)) static int
pltcl_subtransaction(ClientData cdata, Tcl_Interp *interp,
      int objc, Tcl_Obj *const objv[])
{
 MemoryContext oldcontext = CurrentMemoryContext;
 ResourceOwner oldowner = CurrentResourceOwner;
 int retcode;

 if (objc != 2)
 {
  Tcl_WrongNumArgs(interp, 1, objv, "command");
  return TCL_ERROR;
 }






 BeginInternalSubTransaction(((void*)0));
 MemoryContextSwitchTo(oldcontext);

 retcode = Tcl_EvalObjEx(interp, objv[1], 0);

 if (retcode == TCL_ERROR)
 {

  RollbackAndReleaseCurrentSubTransaction();
 }
 else
 {

  ReleaseCurrentSubTransaction();
 }


 MemoryContextSwitchTo(oldcontext);
 CurrentResourceOwner = oldowner;

 return retcode;
}

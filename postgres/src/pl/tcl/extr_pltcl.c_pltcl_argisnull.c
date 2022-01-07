
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int Tcl_Obj ;
typedef int Tcl_Interp ;
struct TYPE_4__ {TYPE_1__* fcinfo; } ;
struct TYPE_3__ {int nargs; } ;
typedef TYPE_1__* FunctionCallInfo ;
typedef int ClientData ;


 int PG_ARGISNULL (int) ;
 int TCL_ERROR ;
 scalar_t__ TCL_OK ;
 scalar_t__ Tcl_GetIntFromObj (int *,int * const,int*) ;
 int Tcl_NewBooleanObj (int ) ;
 int Tcl_NewStringObj (char*,int) ;
 int Tcl_SetObjResult (int *,int ) ;
 int Tcl_WrongNumArgs (int *,int,int * const*,char*) ;
 TYPE_2__* pltcl_current_call_state ;

__attribute__((used)) static int
pltcl_argisnull(ClientData cdata, Tcl_Interp *interp,
    int objc, Tcl_Obj *const objv[])
{
 int argno;
 FunctionCallInfo fcinfo = pltcl_current_call_state->fcinfo;




 if (objc != 2)
 {
  Tcl_WrongNumArgs(interp, 1, objv, "argno");
  return TCL_ERROR;
 }




 if (fcinfo == ((void*)0))
 {
  Tcl_SetObjResult(interp,
       Tcl_NewStringObj("argisnull cannot be used in triggers", -1));
  return TCL_ERROR;
 }




 if (Tcl_GetIntFromObj(interp, objv[1], &argno) != TCL_OK)
  return TCL_ERROR;




 argno--;
 if (argno < 0 || argno >= fcinfo->nargs)
 {
  Tcl_SetObjResult(interp,
       Tcl_NewStringObj("argno out of range", -1));
  return TCL_ERROR;
 }




 Tcl_SetObjResult(interp, Tcl_NewBooleanObj(PG_ARGISNULL(argno)));
 return TCL_OK;
}

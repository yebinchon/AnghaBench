
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int Tcl_Obj ;
typedef int Tcl_Interp ;
struct TYPE_4__ {TYPE_1__* fcinfo; } ;
struct TYPE_3__ {int isnull; } ;
typedef TYPE_1__* FunctionCallInfo ;
typedef int ClientData ;


 int TCL_ERROR ;
 int TCL_RETURN ;
 int Tcl_NewStringObj (char*,int) ;
 int Tcl_SetObjResult (int *,int ) ;
 int Tcl_WrongNumArgs (int *,int,int * const*,char*) ;
 TYPE_2__* pltcl_current_call_state ;

__attribute__((used)) static int
pltcl_returnnull(ClientData cdata, Tcl_Interp *interp,
     int objc, Tcl_Obj *const objv[])
{
 FunctionCallInfo fcinfo = pltcl_current_call_state->fcinfo;




 if (objc != 1)
 {
  Tcl_WrongNumArgs(interp, 1, objv, "");
  return TCL_ERROR;
 }




 if (fcinfo == ((void*)0))
 {
  Tcl_SetObjResult(interp,
       Tcl_NewStringObj("return_null cannot be used in triggers", -1));
  return TCL_ERROR;
 }





 fcinfo->isnull = 1;

 return TCL_RETURN;
}

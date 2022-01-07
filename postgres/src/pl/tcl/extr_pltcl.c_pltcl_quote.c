
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Tcl_Obj ;
typedef int Tcl_Interp ;
typedef int ClientData ;


 int TCL_ERROR ;
 int TCL_OK ;
 char* Tcl_GetStringFromObj (int * const,int*) ;
 int Tcl_NewStringObj (char*,int) ;
 int Tcl_SetObjResult (int *,int ) ;
 int Tcl_WrongNumArgs (int *,int,int * const*,char*) ;
 char* palloc (int) ;
 int pfree (char*) ;

__attribute__((used)) static int
pltcl_quote(ClientData cdata, Tcl_Interp *interp,
   int objc, Tcl_Obj *const objv[])
{
 char *tmp;
 const char *cp1;
 char *cp2;
 int length;




 if (objc != 2)
 {
  Tcl_WrongNumArgs(interp, 1, objv, "string");
  return TCL_ERROR;
 }





 cp1 = Tcl_GetStringFromObj(objv[1], &length);
 tmp = palloc(length * 2 + 1);
 cp2 = tmp;




 while (*cp1)
 {
  if (*cp1 == '\'')
   *cp2++ = '\'';
  else
  {
   if (*cp1 == '\\')
    *cp2++ = '\\';
  }
  *cp2++ = *cp1++;
 }




 *cp2 = '\0';
 Tcl_SetObjResult(interp, Tcl_NewStringObj(tmp, -1));
 pfree(tmp);
 return TCL_OK;
}

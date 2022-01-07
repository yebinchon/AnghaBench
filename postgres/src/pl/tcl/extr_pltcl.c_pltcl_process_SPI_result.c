
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint64 ;
typedef int TupleDesc ;
typedef int Tcl_Obj ;
typedef int Tcl_Interp ;
struct TYPE_4__ {int tupdesc; int * vals; } ;
typedef TYPE_1__ SPITupleTable ;
typedef int HeapTuple ;
 int SPI_freetuptable (TYPE_1__*) ;
 int SPI_result_code_string (int) ;
 int TCL_BREAK ;
 int TCL_CONTINUE ;
 int TCL_ERROR ;
 int TCL_OK ;
 int TCL_RETURN ;
 int Tcl_AppendResult (int *,char*,int ,int *) ;
 int Tcl_EvalObjEx (int *,int *,int ) ;
 int Tcl_NewIntObj (int ) ;
 int Tcl_NewWideIntObj (size_t) ;
 int Tcl_SetObjResult (int *,int ) ;
 int pltcl_set_tuple_values (int *,char const*,size_t,int ,int ) ;

__attribute__((used)) static int
pltcl_process_SPI_result(Tcl_Interp *interp,
       const char *arrayname,
       Tcl_Obj *loop_body,
       int spi_rc,
       SPITupleTable *tuptable,
       uint64 ntuples)
{
 int my_rc = TCL_OK;
 int loop_rc;
 HeapTuple *tuples;
 TupleDesc tupdesc;

 switch (spi_rc)
 {
  case 131:
  case 135:
  case 137:
  case 130:
   Tcl_SetObjResult(interp, Tcl_NewWideIntObj(ntuples));
   break;

  case 128:
  case 133:
   if (tuptable == ((void*)0))
   {
    Tcl_SetObjResult(interp, Tcl_NewIntObj(0));
    break;
   }



  case 132:
  case 134:
  case 136:
  case 129:




   tuples = tuptable->vals;
   tupdesc = tuptable->tupdesc;

   if (loop_body == ((void*)0))
   {




    if (ntuples > 0)
     pltcl_set_tuple_values(interp, arrayname, 0,
             tuples[0], tupdesc);
   }
   else
   {




    uint64 i;

    for (i = 0; i < ntuples; i++)
    {
     pltcl_set_tuple_values(interp, arrayname, i,
             tuples[i], tupdesc);

     loop_rc = Tcl_EvalObjEx(interp, loop_body, 0);

     if (loop_rc == TCL_OK)
      continue;
     if (loop_rc == TCL_CONTINUE)
      continue;
     if (loop_rc == TCL_RETURN)
     {
      my_rc = TCL_RETURN;
      break;
     }
     if (loop_rc == TCL_BREAK)
      break;
     my_rc = TCL_ERROR;
     break;
    }
   }

   if (my_rc == TCL_OK)
   {
    Tcl_SetObjResult(interp, Tcl_NewWideIntObj(ntuples));
   }
   break;

  default:
   Tcl_AppendResult(interp, "pltcl: SPI_execute failed: ",
        SPI_result_code_string(spi_rc), ((void*)0));
   my_rc = TCL_ERROR;
   break;
 }

 SPI_freetuptable(tuptable);

 return my_rc;
}

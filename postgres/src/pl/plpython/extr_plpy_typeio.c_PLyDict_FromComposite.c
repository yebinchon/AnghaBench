
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32 ;
typedef int TupleDesc ;
struct TYPE_5__ {int curr_proc; } ;
struct TYPE_4__ {int t_data; int t_len; } ;
typedef int PyObject ;
typedef int PLyDatumToOb ;
typedef int Oid ;
typedef int HeapTupleHeader ;
typedef TYPE_1__ HeapTupleData ;
typedef int Datum ;


 int DatumGetHeapTupleHeader (int ) ;
 int HeapTupleHeaderGetDatumLength (int ) ;
 int HeapTupleHeaderGetTypMod (int ) ;
 int HeapTupleHeaderGetTypeId (int ) ;
 int * PLyDict_FromTuple (int *,TYPE_1__*,int ,int) ;
 TYPE_2__* PLy_current_execution_context () ;
 int PLy_input_setup_tuple (int *,int ,int ) ;
 int ReleaseTupleDesc (int ) ;
 int lookup_rowtype_tupdesc (int ,int ) ;

__attribute__((used)) static PyObject *
PLyDict_FromComposite(PLyDatumToOb *arg, Datum d)
{
 PyObject *dict;
 HeapTupleHeader td;
 Oid tupType;
 int32 tupTypmod;
 TupleDesc tupdesc;
 HeapTupleData tmptup;

 td = DatumGetHeapTupleHeader(d);

 tupType = HeapTupleHeaderGetTypeId(td);
 tupTypmod = HeapTupleHeaderGetTypMod(td);
 tupdesc = lookup_rowtype_tupdesc(tupType, tupTypmod);


 PLy_input_setup_tuple(arg, tupdesc,
        PLy_current_execution_context()->curr_proc);


 tmptup.t_len = HeapTupleHeaderGetDatumLength(td);
 tmptup.t_data = td;

 dict = PLyDict_FromTuple(arg, &tmptup, tupdesc, 1);

 ReleaseTupleDesc(tupdesc);

 return dict;
}

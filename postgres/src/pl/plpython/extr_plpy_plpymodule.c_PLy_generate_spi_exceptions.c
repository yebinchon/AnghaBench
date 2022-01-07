
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int sqlstate; int classname; int * name; } ;
struct TYPE_4__ {int * exc; } ;
typedef int PyObject ;
typedef TYPE_1__ PLyExceptionEntry ;


 int Assert (int) ;
 int ERROR ;
 int HASH_ENTER ;
 int * PLy_create_exception (int *,int *,int *,int ,int *) ;
 int PLy_elog (int ,char*) ;
 int PLy_spi_exceptions ;
 int * PyDict_New () ;
 int PyDict_SetItemString (int *,char*,int *) ;
 int * PyString_FromString (int ) ;
 int Py_DECREF (int *) ;
 TYPE_3__* exception_map ;
 TYPE_1__* hash_search (int ,int *,int ,int*) ;
 int unpack_sql_state (int ) ;

__attribute__((used)) static void
PLy_generate_spi_exceptions(PyObject *mod, PyObject *base)
{
 int i;

 for (i = 0; exception_map[i].name != ((void*)0); i++)
 {
  bool found;
  PyObject *exc;
  PLyExceptionEntry *entry;
  PyObject *sqlstate;
  PyObject *dict = PyDict_New();

  if (dict == ((void*)0))
   PLy_elog(ERROR, ((void*)0));

  sqlstate = PyString_FromString(unpack_sql_state(exception_map[i].sqlstate));
  if (sqlstate == ((void*)0))
   PLy_elog(ERROR, "could not generate SPI exceptions");

  PyDict_SetItemString(dict, "sqlstate", sqlstate);
  Py_DECREF(sqlstate);

  exc = PLy_create_exception(exception_map[i].name, base, dict,
           exception_map[i].classname, mod);

  entry = hash_search(PLy_spi_exceptions, &exception_map[i].sqlstate,
       HASH_ENTER, &found);
  Assert(!found);
  entry->exc = exc;
 }
}

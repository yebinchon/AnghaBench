
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int PLy_get_sqlerrcode (int *,int*) ;
 int PyArg_ParseTuple (int *,char*,int*,char**,char**,char**,int*,char**,char**,char**,char**,char**) ;
 int * PyObject_GetAttrString (int *,char*) ;
 int Py_XDECREF (int *) ;

__attribute__((used)) static void
PLy_get_spi_error_data(PyObject *exc, int *sqlerrcode, char **detail,
        char **hint, char **query, int *position,
        char **schema_name, char **table_name,
        char **column_name,
        char **datatype_name, char **constraint_name)
{
 PyObject *spidata;

 spidata = PyObject_GetAttrString(exc, "spidata");

 if (spidata != ((void*)0))
 {
  PyArg_ParseTuple(spidata, "izzzizzzzz",
       sqlerrcode, detail, hint, query, position,
       schema_name, table_name, column_name,
       datatype_name, constraint_name);
 }
 else
 {




  PLy_get_sqlerrcode(exc, sqlerrcode);
 }

 Py_XDECREF(spidata);
}

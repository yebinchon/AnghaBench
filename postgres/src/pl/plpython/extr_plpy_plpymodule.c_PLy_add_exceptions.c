
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int hash_ctl ;
struct TYPE_4__ {int keysize; int entrysize; } ;
typedef int PyObject ;
typedef int PLyExceptionEntry ;
typedef TYPE_1__ HASHCTL ;


 int ERROR ;
 int HASH_BLOBS ;
 int HASH_ELEM ;
 void* PLy_create_exception (char*,int *,int *,char*,int *) ;
 int PLy_elog (int ,char*) ;
 void* PLy_exc_error ;
 void* PLy_exc_fatal ;
 int PLy_exc_methods ;
 int PLy_exc_module ;
 void* PLy_exc_spi_error ;
 int PLy_generate_spi_exceptions (int *,void*) ;
 int PLy_spi_exceptions ;
 scalar_t__ PyModule_AddObject (int *,char*,int *) ;
 int * PyModule_Create (int *) ;
 int Py_INCREF (int *) ;
 int * Py_InitModule (char*,int ) ;
 int hash_create (char*,int,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
PLy_add_exceptions(PyObject *plpy)
{
 PyObject *excmod;
 HASHCTL hash_ctl;


 excmod = Py_InitModule("spiexceptions", PLy_exc_methods);



 if (excmod == ((void*)0))
  PLy_elog(ERROR, "could not create the spiexceptions module");





 Py_INCREF(excmod);
 if (PyModule_AddObject(plpy, "spiexceptions", excmod) < 0)
  PLy_elog(ERROR, "could not add the spiexceptions module");

 PLy_exc_error = PLy_create_exception("plpy.Error", ((void*)0), ((void*)0),
           "Error", plpy);
 PLy_exc_fatal = PLy_create_exception("plpy.Fatal", ((void*)0), ((void*)0),
           "Fatal", plpy);
 PLy_exc_spi_error = PLy_create_exception("plpy.SPIError", ((void*)0), ((void*)0),
            "SPIError", plpy);

 memset(&hash_ctl, 0, sizeof(hash_ctl));
 hash_ctl.keysize = sizeof(int);
 hash_ctl.entrysize = sizeof(PLyExceptionEntry);
 PLy_spi_exceptions = hash_create("PL/Python SPI exceptions", 256,
          &hash_ctl, HASH_ELEM | HASH_BLOBS);

 PLy_generate_spi_exceptions(excmod, PLy_exc_spi_error);
}

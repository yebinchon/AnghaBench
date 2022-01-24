#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hash_ctl ;
struct TYPE_4__ {int keysize; int entrysize; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PLyExceptionEntry ;
typedef  TYPE_1__ HASHCTL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int HASH_BLOBS ; 
 int HASH_ELEM ; 
 void* FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* PLy_exc_error ; 
 void* PLy_exc_fatal ; 
 int /*<<< orphan*/  PLy_exc_methods ; 
 int /*<<< orphan*/  PLy_exc_module ; 
 void* PLy_exc_spi_error ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  PLy_spi_exceptions ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9(PyObject *plpy)
{
	PyObject   *excmod;
	HASHCTL		hash_ctl;

#if PY_MAJOR_VERSION < 3
	excmod = FUNC6("spiexceptions", PLy_exc_methods);
#else
	excmod = PyModule_Create(&PLy_exc_module);
#endif
	if (excmod == NULL)
		FUNC1(ERROR, "could not create the spiexceptions module");

	/*
	 * PyModule_AddObject does not add a refcount to the object, for some odd
	 * reason; we must do that.
	 */
	FUNC5(excmod);
	if (FUNC3(plpy, "spiexceptions", excmod) < 0)
		FUNC1(ERROR, "could not add the spiexceptions module");

	PLy_exc_error = FUNC0("plpy.Error", NULL, NULL,
										 "Error", plpy);
	PLy_exc_fatal = FUNC0("plpy.Fatal", NULL, NULL,
										 "Fatal", plpy);
	PLy_exc_spi_error = FUNC0("plpy.SPIError", NULL, NULL,
											 "SPIError", plpy);

	FUNC8(&hash_ctl, 0, sizeof(hash_ctl));
	hash_ctl.keysize = sizeof(int);
	hash_ctl.entrysize = sizeof(PLyExceptionEntry);
	PLy_spi_exceptions = FUNC7("PL/Python SPI exceptions", 256,
									 &hash_ctl, HASH_ELEM | HASH_BLOBS);

	FUNC2(excmod, PLy_exc_spi_error);
}
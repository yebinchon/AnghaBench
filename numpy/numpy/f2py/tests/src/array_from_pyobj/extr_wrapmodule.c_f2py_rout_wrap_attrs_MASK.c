#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  alignment; int /*<<< orphan*/  type; int /*<<< orphan*/  kind; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PyArray_Type ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (char*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * Py_None ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject *FUNC16(PyObject *capi_self,
                                      PyObject *capi_args) {
  PyObject *arr_capi = Py_None;
  PyArrayObject *arr = NULL;
  PyObject *dimensions = NULL;
  PyObject *strides = NULL;
  char s[100];
  int i;
  FUNC14(s,0,100*sizeof(char));
  if (!FUNC0(capi_args,"O!|:wrap.attrs",
                        &PyArray_Type,&arr_capi))
    return NULL;
  arr = (PyArrayObject *)arr_capi;
  FUNC15(s,"%p",FUNC2(arr));
  dimensions = FUNC11(FUNC7(arr));
  strides = FUNC11(FUNC7(arr));
  for (i=0;i<FUNC7(arr);++i) {
    FUNC12(dimensions,i,FUNC10(FUNC4(arr,i)));
    FUNC12(strides,i,FUNC10(FUNC8(arr,i)));
  }
  return FUNC13("siNNO(cciii)ii",s,FUNC7(arr),
                       dimensions,strides,
                       (FUNC1(arr)==NULL?Py_None:FUNC1(arr)),
                       FUNC3(arr)->kind,
                       FUNC3(arr)->type,
                       FUNC9(arr),
                       FUNC6(arr),
                       FUNC3(arr)->alignment,
                       FUNC5(arr),
                       FUNC6(arr));
}
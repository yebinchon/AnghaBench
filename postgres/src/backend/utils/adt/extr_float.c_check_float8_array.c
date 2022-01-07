
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float8 ;
typedef int ArrayType ;


 scalar_t__ ARR_DATA_PTR (int *) ;
 int* ARR_DIMS (int *) ;
 scalar_t__ ARR_ELEMTYPE (int *) ;
 scalar_t__ ARR_HASNULL (int *) ;
 int ARR_NDIM (int *) ;
 int ERROR ;
 scalar_t__ FLOAT8OID ;
 int elog (int ,char*,char const*,int) ;

__attribute__((used)) static float8 *
check_float8_array(ArrayType *transarray, const char *caller, int n)
{





 if (ARR_NDIM(transarray) != 1 ||
  ARR_DIMS(transarray)[0] != n ||
  ARR_HASNULL(transarray) ||
  ARR_ELEMTYPE(transarray) != FLOAT8OID)
  elog(ERROR, "%s: expected %d-element float8 array", caller, n);
 return (float8 *) ARR_DATA_PTR(transarray);
}

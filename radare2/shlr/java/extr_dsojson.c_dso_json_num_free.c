
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DsoJsonNum ;


 int free (int *) ;

void dso_json_num_free (void *y) {
 DsoJsonNum *x = (DsoJsonNum *)y;
 free (x);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;

void dso_json_null_free (void *x) {
 free (x);
}

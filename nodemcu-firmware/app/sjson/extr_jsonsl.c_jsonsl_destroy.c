
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ jsonsl_t ;


 int free (scalar_t__) ;

void jsonsl_destroy(jsonsl_t jsn)
{
    if (jsn) {
        free(jsn);
    }
}

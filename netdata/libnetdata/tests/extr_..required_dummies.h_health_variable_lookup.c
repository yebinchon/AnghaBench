
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rrdcalc {int dummy; } ;
typedef int calculated_number ;



int health_variable_lookup(const char *variable, uint32_t hash, struct rrdcalc *rc, calculated_number *result)
{
    (void)variable;
    (void)hash;
    (void)rc;
    (void)result;
    return 0;
}

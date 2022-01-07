
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int total_number ;
typedef int time_t ;
typedef int collected_number ;
typedef int calculated_number ;
struct TYPE_3__ {int type; scalar_t__ value; } ;
typedef TYPE_1__ RRDVAR ;


 int NAN ;





 int error (char*,int) ;

calculated_number rrdvar2number(RRDVAR *rv) {
    switch(rv->type) {
        case 132: {
            calculated_number *n = (calculated_number *)rv->value;
            return *n;
        }

        case 129: {
            time_t *n = (time_t *)rv->value;
            return *n;
        }

        case 131: {
            collected_number *n = (collected_number *)rv->value;
            return *n;
        }

        case 128: {
            total_number *n = (total_number *)rv->value;
            return *n;
        }

        case 130: {
            int *n = (int *)rv->value;
            return *n;
        }

        default:
            error("I don't know how to convert RRDVAR type %u to calculated_number", rv->type);
            return NAN;
    }
}

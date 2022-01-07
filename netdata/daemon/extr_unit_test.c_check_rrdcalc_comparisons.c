
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ RRDCALC_STATUS ;


 scalar_t__ RRDCALC_STATUS_CLEAR ;
 scalar_t__ RRDCALC_STATUS_CRITICAL ;
 scalar_t__ RRDCALC_STATUS_RAISED ;
 scalar_t__ RRDCALC_STATUS_REMOVED ;
 scalar_t__ RRDCALC_STATUS_UNDEFINED ;
 scalar_t__ RRDCALC_STATUS_UNINITIALIZED ;
 scalar_t__ RRDCALC_STATUS_WARNING ;
 int fprintf (int ,char*,...) ;
 int memset (scalar_t__*,int ,int) ;
 char* rrdcalc_status2string (scalar_t__) ;
 int stderr ;

__attribute__((used)) static int check_rrdcalc_comparisons(void) {
    RRDCALC_STATUS a, b;


    memset(&a, 0, sizeof(RRDCALC_STATUS));
    if(a != RRDCALC_STATUS_UNINITIALIZED) {
        fprintf(stderr, "%s is not zero.\n", rrdcalc_status2string(RRDCALC_STATUS_UNINITIALIZED));
        return 1;
    }

    a = RRDCALC_STATUS_REMOVED;
    b = RRDCALC_STATUS_UNDEFINED;
    if(!(a < b)) {
        fprintf(stderr, "%s is not less than %s\n", rrdcalc_status2string(a), rrdcalc_status2string(b));
        return 1;
    }

    a = RRDCALC_STATUS_UNDEFINED;
    b = RRDCALC_STATUS_UNINITIALIZED;
    if(!(a < b)) {
        fprintf(stderr, "%s is not less than %s\n", rrdcalc_status2string(a), rrdcalc_status2string(b));
        return 1;
    }

    a = RRDCALC_STATUS_UNINITIALIZED;
    b = RRDCALC_STATUS_CLEAR;
    if(!(a < b)) {
        fprintf(stderr, "%s is not less than %s\n", rrdcalc_status2string(a), rrdcalc_status2string(b));
        return 1;
    }

    a = RRDCALC_STATUS_CLEAR;
    b = RRDCALC_STATUS_RAISED;
    if(!(a < b)) {
        fprintf(stderr, "%s is not less than %s\n", rrdcalc_status2string(a), rrdcalc_status2string(b));
        return 1;
    }

    a = RRDCALC_STATUS_RAISED;
    b = RRDCALC_STATUS_WARNING;
    if(!(a < b)) {
        fprintf(stderr, "%s is not less than %s\n", rrdcalc_status2string(a), rrdcalc_status2string(b));
        return 1;
    }

    a = RRDCALC_STATUS_WARNING;
    b = RRDCALC_STATUS_CRITICAL;
    if(!(a < b)) {
        fprintf(stderr, "%s is not less than %s\n", rrdcalc_status2string(a), rrdcalc_status2string(b));
        return 1;
    }

    fprintf(stderr, "RRDCALC_STATUSes are sortable.\n");

    return 0;
}

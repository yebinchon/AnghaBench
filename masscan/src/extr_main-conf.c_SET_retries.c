
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct Masscan {int retries; scalar_t__ echo; scalar_t__ echo_all; } ;


 int CONF_ERR ;
 int CONF_OK ;
 int UNUSEDPARM (char const*) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int strtoul (char const*,int ,int ) ;

__attribute__((used)) static int SET_retries(struct Masscan *masscan, const char *name, const char *value)
{
    uint64_t x;

    UNUSEDPARM(name);
    if (masscan->echo) {
        if (masscan->retries || masscan->echo_all)
            fprintf(masscan->echo, "retries = %u\n", masscan->retries);
        return 0;
    }
    x = strtoul(value, 0, 0);
    if (x >= 1000) {
        fprintf(stderr, "FAIL: retries=<n>: expected number less than 1000\n");
        return CONF_ERR;
    }
    masscan->retries = (unsigned)x;
    return CONF_OK;

}

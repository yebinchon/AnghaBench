
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int one; int of; } ;
struct Masscan {TYPE_1__ shard; scalar_t__ echo; scalar_t__ echo_all; } ;


 int CONF_ERR ;
 int CONF_OK ;
 int LOG (int ,char*) ;
 int UNUSEDPARM (char const*) ;
 int fprintf (scalar_t__,char*,int,int) ;
 scalar_t__ isdigit (char const) ;
 scalar_t__ ispunct (char const) ;

__attribute__((used)) static int SET_shard(struct Masscan *masscan, const char *name, const char *value)
{
    unsigned one = 0;
    unsigned of = 0;

    UNUSEDPARM(name);
    if (masscan->echo) {
        if ((masscan->shard.one != 1 && masscan->shard.of != 1) || masscan->echo_all)
            fprintf(masscan->echo, "shard = %u/%u\n", masscan->shard.one, masscan->shard.of);
        return 0;
    }
    while (isdigit(*value))
        one = one*10 + (*(value++)) - '0';
    while (ispunct(*value))
        value++;
    while (isdigit(*value))
        of = of*10 + (*(value++)) - '0';

    if (one < 1) {
        LOG(0, "FAIL: shard index can't be zero\n");
        LOG(0, "hint   it goes like 1/4 2/4 3/4 4/4\n");
        return CONF_ERR;
    }
    if (one > of) {
        LOG(0, "FAIL: shard spec is wrong\n");
        LOG(0, "hint   it goes like 1/4 2/4 3/4 4/4\n");
        return CONF_ERR;
    }
    masscan->shard.one = one;
    masscan->shard.of = of;
    return CONF_OK;
}

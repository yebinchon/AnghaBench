
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xx ;
struct TYPE_2__ {int name; } ;


 size_t SMACK_NOT_FOUND ;
 int fprintf (int ,char*) ;
 int global_mib ;
 TYPE_1__* mib ;
 size_t smack_search_next (int ,unsigned int*,unsigned char const*,unsigned int*,unsigned int) ;
 scalar_t__ snmp_selftest_banner () ;
 int stderr ;
 scalar_t__ strcmp (int ,char*) ;

int
snmp_selftest(void)
{
    static const unsigned char xx[] = {
        43, 0x80|7, 110, 51, 0x80|20, 0x80|106, 84,
    };
    size_t i;
    unsigned state;
    unsigned offset;
    size_t found_id = SMACK_NOT_FOUND;


    if (snmp_selftest_banner())
        return 1;




    state = 0;
    offset = 0;
    while (offset < sizeof(xx)) {
        i = smack_search_next( global_mib,
                                &state,
                                xx,
                                &offset,
                                (unsigned)sizeof(xx)
                                );
        if (i != SMACK_NOT_FOUND)
            found_id = i;
    }
    if (found_id == SMACK_NOT_FOUND) {
        fprintf(stderr, "snmp: oid parser failed\n");
        return 1;
    }
    if (strcmp(mib[found_id].name, "selftest") != 0) {
        fprintf(stderr, "snmp: oid parser failed\n");
        return 1;
    }



    return 0;
}

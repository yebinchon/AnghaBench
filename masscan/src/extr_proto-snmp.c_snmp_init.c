
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pattern ;
struct TYPE_2__ {int oid; scalar_t__ name; } ;


 int SMACK_ANCHOR_BEGIN ;
 int SMACK_SNMP_HACK ;
 unsigned int convert_oid (unsigned char*,int,int ) ;
 int global_mib ;
 TYPE_1__* mib ;
 int smack_add_pattern (int ,unsigned char*,unsigned int,unsigned int,int) ;
 int smack_compile (int ) ;
 int smack_create (char*,int ) ;

void
snmp_init(void)
{
    unsigned i;



    global_mib = smack_create("snmp-mib", 0);



    for (i=0; mib[i].name; i++) {
        unsigned char pattern[256];
        unsigned len;

        len = convert_oid(pattern, sizeof(pattern), mib[i].oid);

        smack_add_pattern( global_mib,
                            pattern,
                            len,
                            i,
                            SMACK_ANCHOR_BEGIN | SMACK_SNMP_HACK
                            );
    }




    smack_compile(global_mib);

}

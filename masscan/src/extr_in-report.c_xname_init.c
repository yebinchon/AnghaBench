
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; unsigned int length; unsigned int code; } ;


 int global_xnames ;
 TYPE_1__* mynames ;
 int smack_add_pattern (int ,char const*,unsigned int,unsigned int,int ) ;
 int smack_compile (int ) ;
 int smack_create (char*,int ) ;

__attribute__((used)) static void
xname_init(void)
{
    unsigned i;

    global_xnames = smack_create("readscan-x509-names", 0);

    for (i=0; mynames[i].name; i++) {
        const char *pattern = mynames[i].name;
        unsigned len = mynames[i].length;
        unsigned id = mynames[i].code;


        smack_add_pattern( global_xnames,
                            pattern,
                            len,
                            id,
                            0
                            );
    }

    smack_compile(global_xnames);

}

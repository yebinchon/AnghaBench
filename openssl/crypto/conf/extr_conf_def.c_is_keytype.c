
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ meth_data; } ;
typedef TYPE_1__ CONF ;


 unsigned char* os_toascii ;

__attribute__((used)) static int is_keytype(const CONF *conf, char c, unsigned short type)
{
    const unsigned short * keytypes = (const unsigned short *) conf->meth_data;
    unsigned char key = (unsigned char)c;
    if (key > 127) {

        return 0;
    }

    return (keytypes[key] & type) ? 1 : 0;
}

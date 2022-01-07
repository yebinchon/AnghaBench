
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int keysize; int authname; int ciphername; } ;
struct TYPE_3__ {int keysize; int authname; int ciphername; } ;
struct context {TYPE_2__ c1; TYPE_1__ options; } ;



__attribute__((used)) static void
restore_ncp_options(struct context *c)
{
    c->options.ciphername = c->c1.ciphername;
    c->options.authname = c->c1.authname;
    c->options.keysize = c->c1.keysize;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int test_crypto; } ;
struct context {TYPE_1__ options; } ;


 int ASSERT (int) ;
 int M_WARN ;
 int msg (int ,char*) ;

__attribute__((used)) static void
do_init_crypto_none(const struct context *c)
{
    ASSERT(!c->options.test_crypto);
    msg(M_WARN,
        "******* WARNING *******: All encryption and authentication features "
        "disabled -- All data will be tunnelled as clear text and will not be "
        "protected against man-in-the-middle changes. "
        "PLEASE DO RECONSIDER THIS CONFIGURATION!");
}

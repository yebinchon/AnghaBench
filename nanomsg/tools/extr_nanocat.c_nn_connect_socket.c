
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int num; int * items; } ;
struct TYPE_6__ {int num; int * items; } ;
struct TYPE_7__ {TYPE_1__ connect_addresses; TYPE_2__ bind_addresses; } ;
typedef TYPE_3__ nn_options_t ;


 int nn_assert_errno (int,char*) ;
 int nn_bind (int,int ) ;
 int nn_connect (int,int ) ;

void nn_connect_socket (nn_options_t *options, int sock)
{
    int i;
    int rc;

    for (i = 0; i < options->bind_addresses.num; ++i) {
        rc = nn_bind (sock, options->bind_addresses.items[i]);
        nn_assert_errno (rc >= 0, "Can't bind");
    }
    for (i = 0; i < options->connect_addresses.num; ++i) {
        rc = nn_connect (sock, options->connect_addresses.items[i]);
        nn_assert_errno (rc >= 0, "Can't connect");
    }
}

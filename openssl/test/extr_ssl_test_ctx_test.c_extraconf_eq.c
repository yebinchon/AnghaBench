
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int server2; int server; int client; } ;
typedef TYPE_1__ SSL_TEST_EXTRA_CONF ;


 int TEST_true (int ) ;
 int clientconf_eq (int *,int *) ;
 int serverconf_eq (int *,int *) ;

__attribute__((used)) static int extraconf_eq(SSL_TEST_EXTRA_CONF *extra,
                        SSL_TEST_EXTRA_CONF *extra2)
{
    if (!TEST_true(clientconf_eq(&extra->client, &extra2->client))
            || !TEST_true(serverconf_eq(&extra->server, &extra2->server))
            || !TEST_true(serverconf_eq(&extra->server2, &extra2->server2)))
        return 0;
    return 1;
}

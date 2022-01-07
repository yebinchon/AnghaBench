
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ public_key_len; int * public_key; } ;
typedef TYPE_1__ MYSQLND_PACKET_SHA256_PK_REQUEST_RESPONSE ;


 int mnd_efree (int *) ;

__attribute__((used)) static void
php_mysqlnd_sha256_pk_request_response_free_mem(void * _packet)
{
 MYSQLND_PACKET_SHA256_PK_REQUEST_RESPONSE * p = (MYSQLND_PACKET_SHA256_PK_REQUEST_RESPONSE *) _packet;
 if (p->public_key) {
  mnd_efree(p->public_key);
  p->public_key = ((void*)0);
 }
 p->public_key_len = 0;
}

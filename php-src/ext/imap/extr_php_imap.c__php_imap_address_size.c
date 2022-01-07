
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int host; int mailbox; int adl; int personal; struct TYPE_3__* next; } ;
typedef TYPE_1__ ADDRESS ;


 int PHP_IMAP_ADDRESS_SIZE_BUF ;
 scalar_t__ _php_rfc822_len (int ) ;

__attribute__((used)) static int _php_imap_address_size (ADDRESS *addresslist)
{
 ADDRESS *tmp;
 int ret=0, num_ent=0;

 tmp = addresslist;

 if (tmp) do {
  ret += _php_rfc822_len(tmp->personal);
  ret += _php_rfc822_len(tmp->adl);
  ret += _php_rfc822_len(tmp->mailbox);
  ret += _php_rfc822_len(tmp->host);
  num_ent++;
 } while ((tmp = tmp->next));






 ret += (ret) ? num_ent*PHP_IMAP_ADDRESS_SIZE_BUF : 0;

 return ret;
}

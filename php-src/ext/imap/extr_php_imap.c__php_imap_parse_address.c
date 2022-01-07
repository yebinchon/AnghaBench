
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_4__ {scalar_t__ host; scalar_t__ mailbox; scalar_t__ adl; scalar_t__ personal; struct TYPE_4__* next; } ;
typedef TYPE_1__ ADDRESS ;


 int * _php_rfc822_write_address (TYPE_1__*) ;
 int add_next_index_object (int *,int *) ;
 int add_property_string (int *,char*,scalar_t__) ;
 int object_init (int *) ;

__attribute__((used)) static zend_string* _php_imap_parse_address (ADDRESS *addresslist, zval *paddress)
{
 zend_string *fulladdress;
 ADDRESS *addresstmp;
 zval tmpvals;

 addresstmp = addresslist;

 fulladdress = _php_rfc822_write_address(addresstmp);

 addresstmp = addresslist;
 do {
  object_init(&tmpvals);
  if (addresstmp->personal) add_property_string(&tmpvals, "personal", addresstmp->personal);
  if (addresstmp->adl) add_property_string(&tmpvals, "adl", addresstmp->adl);
  if (addresstmp->mailbox) add_property_string(&tmpvals, "mailbox", addresstmp->mailbox);
  if (addresstmp->host) add_property_string(&tmpvals, "host", addresstmp->host);
  add_next_index_object(paddress, &tmpvals);
 } while ((addresstmp = addresstmp->next));
 return fulladdress;
}

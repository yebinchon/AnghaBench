
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
typedef int ADDRESS ;


 int SENDBUFLEN ;
 int _php_imap_address_size (int *) ;
 int rfc822_write_address (char*,int *) ;
 int strlen (char*) ;
 int * zend_string_init (char*,int ,int ) ;
 int zend_throw_error (int *,char*) ;

__attribute__((used)) static zend_string* _php_rfc822_write_address(ADDRESS *addresslist)
{
 char address[SENDBUFLEN];

 if (_php_imap_address_size(addresslist) >= SENDBUFLEN) {
  zend_throw_error(((void*)0), "Address buffer overflow");
  return ((void*)0);
 }
 address[0] = 0;
 rfc822_write_address(address, addresslist);
 return zend_string_init(address, strlen(address), 0);
}

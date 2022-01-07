
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {int length; scalar_t__ data; } ;
typedef TYPE_1__ ASN1_STRING ;


 int add_assoc_stringl (int *,char*,char*,int ) ;

__attribute__((used)) static void php_openssl_add_assoc_asn1_string(zval * val, char * key, ASN1_STRING * str)
{
 add_assoc_stringl(val, key, (char *)str->data, str->length);
}

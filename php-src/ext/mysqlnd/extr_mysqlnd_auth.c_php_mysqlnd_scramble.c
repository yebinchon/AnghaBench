
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const zend_uchar ;
typedef int PHP_SHA1_CTX ;


 int PHP_SHA1Final (int const* const,int *) ;
 int PHP_SHA1Init (int *) ;
 int PHP_SHA1Update (int *,int const*,size_t const) ;
 int SCRAMBLE_LENGTH ;
 int SHA1_MAX_LENGTH ;
 int php_mysqlnd_crypt (int const* const,int const*,int const*,int) ;

void php_mysqlnd_scramble(zend_uchar * const buffer, const zend_uchar * const scramble, const zend_uchar * const password, const size_t password_len)
{
 PHP_SHA1_CTX context;
 zend_uchar sha1[SHA1_MAX_LENGTH];
 zend_uchar sha2[SHA1_MAX_LENGTH];


 PHP_SHA1Init(&context);
 PHP_SHA1Update(&context, password, password_len);
 PHP_SHA1Final(sha1, &context);


 PHP_SHA1Init(&context);
 PHP_SHA1Update(&context, (zend_uchar*)sha1, SHA1_MAX_LENGTH);
 PHP_SHA1Final(sha2, &context);


 PHP_SHA1Init(&context);
 PHP_SHA1Update(&context, scramble, SCRAMBLE_LENGTH);
 PHP_SHA1Update(&context, (zend_uchar*)sha2, SHA1_MAX_LENGTH);
 PHP_SHA1Final(buffer, &context);


 php_mysqlnd_crypt(buffer, (const zend_uchar *)buffer, (const zend_uchar *)sha1, SHA1_MAX_LENGTH);
}

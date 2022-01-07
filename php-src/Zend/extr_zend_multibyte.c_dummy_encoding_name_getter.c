
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_encoding ;



__attribute__((used)) static const char *dummy_encoding_name_getter(const zend_encoding *encoding)
{
 return (const char*)encoding;
}

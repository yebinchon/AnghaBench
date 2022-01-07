
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int * BIO_new_mem_buf (char*,size_t) ;
 char* glue_strings (char const**,size_t*) ;

__attribute__((used)) static BIO *glue2bio(const char **pem, char **out)
{
    size_t s = 0;

    *out = glue_strings(pem, &s);
    return BIO_new_mem_buf(*out, s);
}

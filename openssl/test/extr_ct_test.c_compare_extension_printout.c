
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_EXTENSION ;
typedef int BIO ;


 int BIO_free (int *) ;
 int BIO_get_mem_data (int *,char**) ;
 int * BIO_new (int ) ;
 int BIO_s_mem () ;
 int BIO_write (int *,char*,int) ;
 int TEST_ptr (int *) ;
 int TEST_str_eq (char*,char const*) ;
 int TEST_true (int ) ;
 int X509V3_EXT_DEFAULT ;
 int X509V3_EXT_print (int *,int *,int ,int ) ;

__attribute__((used)) static int compare_extension_printout(X509_EXTENSION *extension,
                                      const char *expected_output)
{
    BIO *text_buffer = ((void*)0);
    char *actual_output = ((void*)0);
    int result = 0;

    if (!TEST_ptr(text_buffer = BIO_new(BIO_s_mem()))
            || !TEST_true(X509V3_EXT_print(text_buffer, extension,
                                           X509V3_EXT_DEFAULT, 0)))
        goto end;


    if (!TEST_true(BIO_write(text_buffer, "\0", 1)))
        goto end;

    BIO_get_mem_data(text_buffer, &actual_output);
    if (!TEST_str_eq(actual_output, expected_output))
        goto end;

    result = 1;

end:
    BIO_free(text_buffer);
    return result;
}

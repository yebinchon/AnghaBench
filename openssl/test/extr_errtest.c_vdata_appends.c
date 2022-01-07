
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_add_error_data (int,char*) ;
 int ERR_peek_error_data (char const**,int *) ;
 int TEST_str_eq (char const*,char*) ;

__attribute__((used)) static int vdata_appends(void)
{
    const char *data;

    CRYPTOerr(0, ERR_R_MALLOC_FAILURE);
    ERR_add_error_data(1, "hello ");
    ERR_add_error_data(1, "world");
    ERR_peek_error_data(&data, ((void*)0));
    return TEST_str_eq(data, "hello world");
}

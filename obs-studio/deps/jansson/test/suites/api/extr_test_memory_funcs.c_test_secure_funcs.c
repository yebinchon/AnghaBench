
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int create_and_free_complex_object () ;
 int json_set_alloc_funcs (int ,int ) ;
 int secure_free ;
 int secure_malloc ;

__attribute__((used)) static void test_secure_funcs(void)
{
    json_set_alloc_funcs(secure_malloc, secure_free);
    create_and_free_complex_object();
}

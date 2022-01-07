
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ json_malloc_t ;
typedef scalar_t__ json_free_t ;


 int create_and_free_complex_object () ;
 int fail (char*) ;
 int free_called ;
 int json_get_alloc_funcs (scalar_t__*,scalar_t__*) ;
 int json_set_alloc_funcs (scalar_t__,scalar_t__) ;
 int malloc_called ;
 scalar_t__ my_free ;
 scalar_t__ my_malloc ;

__attribute__((used)) static void test_simple()
{
    json_malloc_t mfunc = ((void*)0);
    json_free_t ffunc = ((void*)0);

    json_set_alloc_funcs(my_malloc, my_free);
    json_get_alloc_funcs(&mfunc, &ffunc);
    create_and_free_complex_object();

    if (malloc_called != 1 || free_called != 1
        || mfunc != my_malloc || ffunc != my_free)
        fail("Custom allocation failed");
}

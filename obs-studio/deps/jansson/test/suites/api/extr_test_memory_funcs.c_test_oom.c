
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int create_and_free_object_with_oom () ;
 int fail (char*) ;
 scalar_t__ free_called ;
 int json_set_alloc_funcs (int ,int ) ;
 int oom_free ;
 int oom_malloc ;

__attribute__((used)) static void test_oom()
{
    free_called = 0;
    json_set_alloc_funcs(oom_malloc, oom_free);
    create_and_free_object_with_oom();

    if (free_called == 0)
        fail("Allocation with OOM failed");
}

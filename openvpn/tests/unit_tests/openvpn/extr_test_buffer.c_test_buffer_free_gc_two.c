
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_entry {struct gc_entry* next; } ;
struct gc_arena {struct gc_entry* list; } ;
struct buffer {int data; } ;


 struct buffer alloc_buf_gc (int,struct gc_arena*) ;
 int assert_non_null (struct gc_entry*) ;
 int assert_ptr_equal (struct gc_entry*,int ) ;
 int assert_ptr_not_equal (struct gc_entry*,int ) ;
 int free_buf_gc (struct buffer*,struct gc_arena*) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;

__attribute__((used)) static void
test_buffer_free_gc_two(void **state)
{
    struct gc_arena gc = gc_new();
    struct buffer buf1 = alloc_buf_gc(1024, &gc);
    struct buffer buf2 = alloc_buf_gc(1024, &gc);
    struct buffer buf3 = alloc_buf_gc(1024, &gc);

    struct gc_entry *e;

    e = gc.list;

    assert_ptr_equal(e + 1, buf3.data);
    assert_ptr_equal(e->next + 1, buf2.data);
    assert_ptr_equal(e->next->next + 1, buf1.data);

    free_buf_gc(&buf2, &gc);

    assert_non_null(gc.list);

    while (e)
    {
        assert_ptr_not_equal(e + 1, buf2.data);
        e = e->next;
    }

    gc_free(&gc);
}

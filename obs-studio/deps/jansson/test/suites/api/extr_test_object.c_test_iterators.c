
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int fail (char*) ;
 int json_decref (int *) ;
 int * json_object () ;
 int * json_object_get (int *,char*) ;
 void* json_object_iter (int *) ;
 void* json_object_iter_at (int *,char*) ;
 int json_object_iter_key (void*) ;
 int * json_object_iter_next (int *,void*) ;
 scalar_t__ json_object_iter_set (int *,void*,int *) ;
 int * json_object_iter_value (void*) ;
 scalar_t__ json_object_set (int *,char*,int *) ;
 int * json_string (char*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void test_iterators()
{
    json_t *object, *foo, *bar, *baz;
    void *iter;

    if(json_object_iter(((void*)0)))
        fail("able to iterate over NULL");

    if(json_object_iter_next(((void*)0), ((void*)0)))
        fail("able to increment an iterator on a NULL object");

    object = json_object();
    foo = json_string("foo");
    bar = json_string("bar");
    baz = json_string("baz");
    if(!object || !foo || !bar || !baz)
        fail("unable to create values");

    if(json_object_iter_next(object, ((void*)0)))
        fail("able to increment a NULL iterator");

    if(json_object_set(object, "a", foo) ||
       json_object_set(object, "b", bar) ||
       json_object_set(object, "c", baz))
        fail("unable to populate object");

    iter = json_object_iter(object);
    if(!iter)
        fail("unable to get iterator");
    if (strcmp(json_object_iter_key(iter), "a") != 0)
        fail("iterating doesn't yield keys in order");
    if (json_object_iter_value(iter) != foo)
        fail("iterating doesn't yield values in order");

    iter = json_object_iter_next(object, iter);
    if(!iter)
        fail("unable to increment iterator");
    if (strcmp(json_object_iter_key(iter), "b") != 0)
        fail("iterating doesn't yield keys in order");
    if (json_object_iter_value(iter) != bar)
        fail("iterating doesn't yield values in order");

    iter = json_object_iter_next(object, iter);
    if(!iter)
        fail("unable to increment iterator");
    if (strcmp(json_object_iter_key(iter), "c") != 0)
        fail("iterating doesn't yield keys in order");
    if (json_object_iter_value(iter) != baz)
        fail("iterating doesn't yield values in order");

    if(json_object_iter_next(object, iter) != ((void*)0))
        fail("able to iterate over the end");

    if(json_object_iter_at(object, "foo"))
        fail("json_object_iter_at() succeeds for non-existent key");

    iter = json_object_iter_at(object, "b");
    if(!iter)
        fail("json_object_iter_at() fails for an existing key");

    if(strcmp(json_object_iter_key(iter), "b"))
        fail("iterating failed: wrong key");
    if(json_object_iter_value(iter) != bar)
        fail("iterating failed: wrong value");

    if(json_object_iter_set(object, iter, baz))
        fail("unable to set value at iterator");

    if(strcmp(json_object_iter_key(iter), "b"))
        fail("json_object_iter_key() fails after json_object_iter_set()");
    if(json_object_iter_value(iter) != baz)
        fail("json_object_iter_value() fails after json_object_iter_set()");
    if(json_object_get(object, "b") != baz)
        fail("json_object_get() fails after json_object_iter_set()");

    json_decref(object);
    json_decref(foo);
    json_decref(bar);
    json_decref(baz);
}

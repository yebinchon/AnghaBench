
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_list {int member_0; } ;
struct test_ctx {int dummy; } ;
struct list_item {int member_0; } ;


 int LL_APPEND (int ,struct the_list*,struct list_item*) ;
 int LL_CLEAR (int ,struct the_list*) ;
 int LL_INSERT_AFTER (int ,struct the_list*,struct list_item*,struct list_item*) ;
 int LL_INSERT_BEFORE (int ,struct the_list*,struct list_item*,struct list_item*) ;
 int LL_PREPEND (int ,struct the_list*,struct list_item*) ;
 int LL_REMOVE (int ,struct the_list*,struct list_item*) ;
 struct list_item* STUPID_SHIT (struct list_item*) ;
 int check_list (int,...) ;
 int check_list_empty () ;
 int list_node ;

__attribute__((used)) static void run(struct test_ctx *ctx)
{
    struct the_list lst = {0};
    struct list_item e1 = {1};
    struct list_item e2 = {2};
    struct list_item e3 = {3};
    struct list_item e4 = {4};
    struct list_item e5 = {5};
    struct list_item e6 = {6};







    assert_true(do_check_list(&lst, ((void*)0), 0));;
    LL_APPEND(list_node, &lst, &e1);

    assert_true(do_check_list(&lst, (int[]){1}, sizeof((int[]){1}) / sizeof(int)));;
    LL_APPEND(list_node, &lst, &e2);

    assert_true(do_check_list(&lst, (int[]){1, 2}, sizeof((int[]){1, 2}) / sizeof(int)));;
    LL_APPEND(list_node, &lst, &e4);

    assert_true(do_check_list(&lst, (int[]){1, 2, 4}, sizeof((int[]){1, 2, 4}) / sizeof(int)));;
    LL_CLEAR(list_node, &lst);

    assert_true(do_check_list(&lst, ((void*)0), 0));;
    LL_PREPEND(list_node, &lst, &e4);

    assert_true(do_check_list(&lst, (int[]){4}, sizeof((int[]){4}) / sizeof(int)));;
    LL_PREPEND(list_node, &lst, &e2);

    assert_true(do_check_list(&lst, (int[]){2, 4}, sizeof((int[]){2, 4}) / sizeof(int)));;
    LL_PREPEND(list_node, &lst, &e1);

    assert_true(do_check_list(&lst, (int[]){1, 2, 4}, sizeof((int[]){1, 2, 4}) / sizeof(int)));;
    LL_CLEAR(list_node, &lst);

    assert_true(do_check_list(&lst, ((void*)0), 0));;
    LL_INSERT_BEFORE(list_node, &lst, (struct list_item *)((void*)0), &e6);

    assert_true(do_check_list(&lst, (int[]){6}, sizeof((int[]){6}) / sizeof(int)));;
    LL_INSERT_BEFORE(list_node, &lst, (struct list_item *)((void*)0), &e1);

    assert_true(do_check_list(&lst, (int[]){6, 1}, sizeof((int[]){6, 1}) / sizeof(int)));;
    LL_INSERT_BEFORE(list_node, &lst, (struct list_item *)((void*)0), &e2);

    assert_true(do_check_list(&lst, (int[]){6, 1, 2}, sizeof((int[]){6, 1, 2}) / sizeof(int)));;
    LL_INSERT_BEFORE(list_node, &lst, STUPID_SHIT(&e6), &e3);

    assert_true(do_check_list(&lst, (int[]){3, 6, 1, 2}, sizeof((int[]){3, 6, 1, 2}) / sizeof(int)));;
    LL_INSERT_BEFORE(list_node, &lst, STUPID_SHIT(&e6), &e5);

    assert_true(do_check_list(&lst, (int[]){3, 5, 6, 1, 2}, sizeof((int[]){3, 5, 6, 1, 2}) / sizeof(int)));;
    LL_INSERT_BEFORE(list_node, &lst, STUPID_SHIT(&e2), &e4);

    assert_true(do_check_list(&lst, (int[]){3, 5, 6, 1, 4, 2}, sizeof((int[]){3, 5, 6, 1, 4, 2}) / sizeof(int)));;
    LL_REMOVE(list_node, &lst, &e6);

    assert_true(do_check_list(&lst, (int[]){3, 5, 1, 4, 2}, sizeof((int[]){3, 5, 1, 4, 2}) / sizeof(int)));;
    LL_REMOVE(list_node, &lst, &e3);

    assert_true(do_check_list(&lst, (int[]){5, 1, 4, 2}, sizeof((int[]){5, 1, 4, 2}) / sizeof(int)));;
    LL_REMOVE(list_node, &lst, &e2);

    assert_true(do_check_list(&lst, (int[]){5, 1, 4}, sizeof((int[]){5, 1, 4}) / sizeof(int)));;
    LL_REMOVE(list_node, &lst, &e4);

    assert_true(do_check_list(&lst, (int[]){5, 1}, sizeof((int[]){5, 1}) / sizeof(int)));;
    LL_REMOVE(list_node, &lst, &e5);

    assert_true(do_check_list(&lst, (int[]){1}, sizeof((int[]){1}) / sizeof(int)));;
    LL_REMOVE(list_node, &lst, &e1);

    assert_true(do_check_list(&lst, ((void*)0), 0));;
    LL_APPEND(list_node, &lst, &e2);

    assert_true(do_check_list(&lst, (int[]){2}, sizeof((int[]){2}) / sizeof(int)));;
    LL_REMOVE(list_node, &lst, &e2);

    assert_true(do_check_list(&lst, ((void*)0), 0));;
    LL_INSERT_AFTER(list_node, &lst, (struct list_item *)((void*)0), &e1);

    assert_true(do_check_list(&lst, (int[]){1}, sizeof((int[]){1}) / sizeof(int)));;
    LL_INSERT_AFTER(list_node, &lst, (struct list_item *)((void*)0), &e2);

    assert_true(do_check_list(&lst, (int[]){2, 1}, sizeof((int[]){2, 1}) / sizeof(int)));;
    LL_INSERT_AFTER(list_node, &lst, (struct list_item *)((void*)0), &e3);

    assert_true(do_check_list(&lst, (int[]){3, 2, 1}, sizeof((int[]){3, 2, 1}) / sizeof(int)));;
    LL_INSERT_AFTER(list_node, &lst, STUPID_SHIT(&e3), &e4);

    assert_true(do_check_list(&lst, (int[]){3, 4, 2, 1}, sizeof((int[]){3, 4, 2, 1}) / sizeof(int)));;
    LL_INSERT_AFTER(list_node, &lst, STUPID_SHIT(&e4), &e5);

    assert_true(do_check_list(&lst, (int[]){3, 4, 5, 2, 1}, sizeof((int[]){3, 4, 5, 2, 1}) / sizeof(int)));;
    LL_INSERT_AFTER(list_node, &lst, STUPID_SHIT(&e1), &e6);

    assert_true(do_check_list(&lst, (int[]){3, 4, 5, 2, 1, 6}, sizeof((int[]){3, 4, 5, 2, 1, 6}) / sizeof(int)));;
}

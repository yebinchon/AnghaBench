
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sigaction {int sa_mask; int sa_flags; int sa_handler; } ;
typedef enum test_return { ____Placeholder_test_return } test_return ;
typedef int cache_t ;


 int SIGABRT ;
 int SIG_IGN ;
 int TEST_PASS ;
 int TEST_SKIP ;
 int assert (int) ;
 char* cache_alloc (int *) ;
 int * cache_create (char*,int,int,int *,int *) ;
 int cache_destroy (int *) ;
 int cache_error ;
 int cache_free (int *,char*) ;
 int sigaction (int ,struct sigaction*,struct sigaction*) ;
 int sigemptyset (int *) ;

__attribute__((used)) static enum test_return cache_redzone_test(void)
{

    cache_t *cache = cache_create("test", sizeof(uint32_t), sizeof(char*),
                                  ((void*)0), ((void*)0));


    struct sigaction old_action;
    struct sigaction action = { .sa_handler = SIG_IGN, .sa_flags = 0};
    sigemptyset(&action.sa_mask);
    sigaction(SIGABRT, &action, &old_action);


    char *p = cache_alloc(cache);
    char old = *(p - 1);
    *(p - 1) = 0;
    cache_free(cache, p);
    assert(cache_error == -1);
    *(p - 1) = old;

    p[sizeof(uint32_t)] = 0;
    cache_free(cache, p);
    assert(cache_error == 1);


    sigaction(SIGABRT, &old_action, ((void*)0));

    cache_destroy(cache);

    return TEST_PASS;



}

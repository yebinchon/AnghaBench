
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int ENGINE_finish (int *) ;
 int ENGINE_init (int *) ;
 scalar_t__ initialized_engines ;
 scalar_t__ sk_ENGINE_new_null () ;
 int sk_ENGINE_push (scalar_t__,int *) ;

__attribute__((used)) static int int_engine_init(ENGINE *e)
{
    if (!ENGINE_init(e))
        return 0;
    if (!initialized_engines)
        initialized_engines = sk_ENGINE_new_null();
    if (!initialized_engines || !sk_ENGINE_push(initialized_engines, e)) {
        ENGINE_finish(e);
        return 0;
    }
    return 1;
}

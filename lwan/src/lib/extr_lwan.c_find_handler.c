
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_handler_info {void* handler; int name; } ;
typedef int lwan_handler ;


 struct lwan_handler_info* __start_lwan_handler ;
 struct lwan_handler_info const* __stop_lwan_handler ;
 scalar_t__ streq (int ,char const*) ;

__attribute__((used)) __attribute__((no_sanitize_address))
static void *find_handler(const char *name)
{
    extern const struct lwan_handler_info SECTION_START(lwan_handler);
    extern const struct lwan_handler_info SECTION_END(lwan_handler);
    const struct lwan_handler_info *handler;

    for (handler = __start_lwan_handler; handler < __stop_lwan_handler;
         handler++) {
        if (streq(handler->name, name))
            return handler->handler;
    }

    return ((void*)0);
}

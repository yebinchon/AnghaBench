
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fortune_array {int dummy; } ;
struct coro {int dummy; } ;
struct TYPE_2__ {int id; char* message; } ;
struct Fortune {TYPE_1__ item; } ;


 scalar_t__ UNLIKELY (int) ;
 char* coro_strdup (struct coro*,char const*) ;
 struct Fortune* fortune_array_append (struct fortune_array*) ;

__attribute__((used)) static bool append_fortune(struct coro *coro, struct fortune_array *fortunes,
                           int id, const char *message)
{
    struct Fortune *fortune;
    char *message_copy;

    message_copy = coro_strdup(coro, message);
    if (UNLIKELY(!message_copy))
        return 0;

    fortune = fortune_array_append(fortunes);
    if (UNLIKELY(!fortune))
        return 0;

    fortune->item.id = id;
    fortune->item.message = message_copy;

    return 1;
}

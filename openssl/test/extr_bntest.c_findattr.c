
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char const* value; int key; } ;
struct TYPE_4__ {int numpairs; TYPE_2__* pairs; } ;
typedef TYPE_1__ STANZA ;
typedef TYPE_2__ PAIR ;


 scalar_t__ strcasecmp (int ,char const*) ;

__attribute__((used)) static const char *findattr(STANZA *s, const char *key)
{
    int i = s->numpairs;
    PAIR *pp = s->pairs;

    for ( ; --i >= 0; pp++)
        if (strcasecmp(pp->key, key) == 0)
            return pp->value;
    return ((void*)0);
}

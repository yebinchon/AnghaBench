
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ value; } ;
typedef TYPE_1__ AVDictionaryEntry ;
typedef int AVDictionary ;


 long INT_MAX ;
 long INT_MIN ;
 TYPE_1__* av_dict_get (int *,char const*,int *,int ) ;
 long strtol (scalar_t__,char**,int) ;

__attribute__((used)) static int dict_get_decimal(AVDictionary *dict, const char *entry, int def)
{
    AVDictionaryEntry *e = av_dict_get(dict, entry, ((void*)0), 0);
    if (e && e->value) {
        char *end = ((void*)0);
        long int r = strtol(e->value, &end, 10);
        if (end && !end[0] && r >= INT_MIN && r <= INT_MAX)
            return r;
    }
    return def;
}

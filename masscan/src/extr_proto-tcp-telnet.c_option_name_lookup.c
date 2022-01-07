
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* text; unsigned int num; } ;


 TYPE_1__* options ;

__attribute__((used)) static const char *
option_name_lookup(unsigned optnum)
{
    size_t i;
    for (i=0; options[i].text; i++) {
        if (options[i].num == optnum)
            return options[i].text;
    }
    return 0;
}

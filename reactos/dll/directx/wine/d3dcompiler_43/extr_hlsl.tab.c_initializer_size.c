
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parse_initializer {unsigned int args_count; TYPE_1__** args; } ;
struct TYPE_2__ {int data_type; } ;


 int TRACE (char*,unsigned int) ;
 scalar_t__ components_count_type (int ) ;

__attribute__((used)) static unsigned int initializer_size(const struct parse_initializer *initializer)
{
    unsigned int count = 0, i;

    for (i = 0; i < initializer->args_count; ++i)
    {
        count += components_count_type(initializer->args[i]->data_type);
    }
    TRACE("Initializer size = %u.\n", count);
    return count;
}

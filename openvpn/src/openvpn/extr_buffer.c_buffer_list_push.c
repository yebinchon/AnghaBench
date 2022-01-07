
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct buffer_list {int dummy; } ;
struct TYPE_2__ {size_t len; } ;
struct buffer_entry {TYPE_1__ buf; } ;


 struct buffer_entry* buffer_list_push_data (struct buffer_list*,char const*,size_t const) ;
 size_t strlen (char const*) ;

void
buffer_list_push(struct buffer_list *ol, const char *str)
{
    if (str)
    {
        const size_t len = strlen((const char *)str);
        struct buffer_entry *e = buffer_list_push_data(ol, str, len+1);
        if (e)
        {
            e->buf.len = len;
        }
    }
}

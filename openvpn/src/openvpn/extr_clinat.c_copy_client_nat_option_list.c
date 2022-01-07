
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client_nat_option_list {int n; int * entries; } ;


 int add_entry (struct client_nat_option_list*,int *) ;

void
copy_client_nat_option_list(struct client_nat_option_list *dest,
                            const struct client_nat_option_list *src)
{
    int i;
    for (i = 0; i < src->n; ++i)
    {
        if (!add_entry(dest, &src->entries[i]))
        {
            break;
        }
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeout {struct timeout* next; struct interface_info* what; } ;
struct protocol {struct protocol* next; struct interface_info* local; } ;
struct interface_info {int dummy; } ;


 int free (struct protocol*) ;
 struct timeout* free_timeouts ;
 struct protocol* protocols ;
 struct timeout* timeouts ;

void
remove_protocol(struct protocol *proto)
{
    struct protocol *p, *next, *prev;
    struct interface_info *ip = proto->local;
    struct timeout *t, *q, *u;

    t = ((void*)0);
    q = timeouts;
    while (q != ((void*)0))
    {

        if (q->what == ip)
        {

            if (t)
                t->next = q->next;
            else
                timeouts = q->next;


            u = q->next;


            q->next = free_timeouts;
            free_timeouts = q;
        }
        else
        {

            u = q->next;


            t = q;
        }


        q = u;
    }

    prev = ((void*)0);
    for (p = protocols; p; p = next) {
        next = p->next;
        if (p == proto) {
            if (prev)
                prev->next = p->next;
            else
                protocols = p->next;
            free(p);
        }
    }
}

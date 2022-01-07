
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protocol {int fd; void (* handler ) (struct protocol*) ;struct protocol* next; void* local; } ;


 int error (char*,char*) ;
 struct protocol* malloc (int) ;
 struct protocol* protocols ;

void
add_protocol(char *name, int fd, void (*handler)(struct protocol *),
             void *local)
{
    struct protocol *p;

    p = malloc(sizeof(*p));
    if (!p)
        error("can't allocate protocol struct for %s", name);

    p->fd = fd;
    p->handler = handler;
    p->local = local;
    p->next = protocols;
    protocols = p;
}

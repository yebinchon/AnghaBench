
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protocol {void* local; struct protocol* next; } ;
struct interface_info {int dummy; } ;


 struct protocol* protocols ;

struct protocol *
find_protocol_by_adapter(struct interface_info *info)
{
    struct protocol *p;

    for( p = protocols; p; p = p->next ) {
        if( p->local == (void *)info ) return p;
    }

    return ((void*)0);
}

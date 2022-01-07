
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ protocol; } ;
typedef TYPE_1__ conn ;


 scalar_t__ ascii_prot ;
 int assert (int) ;
 scalar_t__ binary_prot ;
 int complete_nread_ascii (TYPE_1__*) ;
 int complete_nread_binary (TYPE_1__*) ;

__attribute__((used)) static void complete_nread(conn *c) {
    assert(c != ((void*)0));
    assert(c->protocol == ascii_prot
           || c->protocol == binary_prot);

    if (c->protocol == ascii_prot) {
        complete_nread_ascii(c);
    } else if (c->protocol == binary_prot) {
        complete_nread_binary(c);
    }
}

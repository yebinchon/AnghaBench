
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iaddr {scalar_t__ len; int iabuf; } ;


 int memcmp (int ,int ,scalar_t__) ;

int addr_eq( struct iaddr a, struct iaddr b ) {
    return a.len == b.len && !memcmp( a.iabuf, b.iabuf, a.len );
}

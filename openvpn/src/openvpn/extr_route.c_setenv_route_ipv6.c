
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct route_ipv6 {int flags; int gateway; int netbits; int network; } ;
struct gc_arena {int dummy; } ;
struct env_set {int dummy; } ;
struct buffer {int dummy; } ;


 int BSTR (struct buffer*) ;
 int RT_DEFINED ;
 struct buffer alloc_buf_gc (int,struct gc_arena*) ;
 int buf_printf (struct buffer*,char*,int,...) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int print_in6_addr (int ,int ,struct gc_arena*) ;
 int setenv_str (struct env_set*,int ,int ) ;

__attribute__((used)) static void
setenv_route_ipv6(struct env_set *es, const struct route_ipv6 *r6, int i)
{
    struct gc_arena gc = gc_new();
    if (r6->flags & RT_DEFINED)
    {
        struct buffer name1 = alloc_buf_gc( 256, &gc );
        struct buffer val = alloc_buf_gc( 256, &gc );
        struct buffer name2 = alloc_buf_gc( 256, &gc );

        buf_printf( &name1, "route_ipv6_network_%d", i );
        buf_printf( &val, "%s/%d", print_in6_addr( r6->network, 0, &gc ),
                    r6->netbits );
        setenv_str( es, BSTR(&name1), BSTR(&val) );

        buf_printf( &name2, "route_ipv6_gateway_%d", i );
        setenv_str( es, BSTR(&name2), print_in6_addr( r6->gateway, 0, &gc ));
    }
    gc_free(&gc);
}

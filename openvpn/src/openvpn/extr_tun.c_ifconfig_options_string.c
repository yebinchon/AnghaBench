
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap {scalar_t__ type; scalar_t__ topology; int local; int remote_netmask; scalar_t__ did_ifconfig_setup; } ;
struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;


 char const* BSTR (struct buffer*) ;
 scalar_t__ DEV_TYPE_TAP ;
 scalar_t__ DEV_TYPE_TUN ;
 scalar_t__ TOP_SUBNET ;
 struct buffer alloc_buf_gc (int,struct gc_arena*) ;
 int buf_printf (struct buffer*,char*,...) ;
 char* print_in_addr_t (int,int ,struct gc_arena*) ;

const char *
ifconfig_options_string(const struct tuntap *tt, bool remote, bool disable, struct gc_arena *gc)
{
    struct buffer out = alloc_buf_gc(256, gc);
    if (tt->did_ifconfig_setup && !disable)
    {
        if (tt->type == DEV_TYPE_TAP || (tt->type == DEV_TYPE_TUN && tt->topology == TOP_SUBNET))
        {
            buf_printf(&out, "%s %s",
                       print_in_addr_t(tt->local & tt->remote_netmask, 0, gc),
                       print_in_addr_t(tt->remote_netmask, 0, gc));
        }
        else if (tt->type == DEV_TYPE_TUN)
        {
            const char *l, *r;
            if (remote)
            {
                r = print_in_addr_t(tt->local, 0, gc);
                l = print_in_addr_t(tt->remote_netmask, 0, gc);
            }
            else
            {
                l = print_in_addr_t(tt->local, 0, gc);
                r = print_in_addr_t(tt->remote_netmask, 0, gc);
            }
            buf_printf(&out, "%s %s", r, l);
        }
        else
        {
            buf_printf(&out, "[undef]");
        }
    }
    return BSTR(&out);
}

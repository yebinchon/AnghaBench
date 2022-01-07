
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mssfix_default; } ;
struct options {scalar_t__ proto_force; char* tls_auth_file_inline; char* tls_crypt_inline; int gc; scalar_t__ persist_key; int tls_crypt_v2_inline; scalar_t__ tls_crypt_v2_file; void* tls_crypt_file; int key_direction; void* tls_auth_file; TYPE_1__ ce; scalar_t__ client; scalar_t__ server_bridge_proxy_dhcp; scalar_t__ server_bridge_defined; scalar_t__ server_defined; int dev_type; int dev; } ;
struct connection_entry {scalar_t__ proto; int bind_local; scalar_t__ af; int tun_mtu_defined; int tun_mtu_extra_defined; char* tls_auth_file_inline; char* tls_crypt_inline; void* tls_crypt_file; void* tls_auth_file; int tls_crypt_v2_inline; scalar_t__ tls_crypt_v2_file; int key_direction; int tun_mtu_extra; int link_mtu_defined; scalar_t__ socks_proxy_server; scalar_t__ fragment; scalar_t__ mssfix; int flags; int * local_port; int bind_defined; int local_port_defined; int local; } ;
struct buffer {scalar_t__ data; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int CE_DISABLED ;
 int const DEV_TYPE_TAP ;
 void* INLINE_FILE_TAG ;
 int M_FATAL ;
 int M_INFO ;
 int M_USAGE ;
 scalar_t__ PROTO_TCP ;
 scalar_t__ PROTO_TCP_CLIENT ;
 scalar_t__ PROTO_TCP_SERVER ;
 scalar_t__ PROTO_UDP ;
 int TAP_MTU_EXTRA_DEFAULT ;
 int buf_valid (struct buffer*) ;
 struct buffer buffer_read_from_file (void*,int *) ;
 int dev_type_enum (int ,int ) ;
 int msg (int ,char*,...) ;
 scalar_t__ proto_is_udp (scalar_t__) ;

__attribute__((used)) static void
options_postprocess_mutate_ce(struct options *o, struct connection_entry *ce)
{
    const int dev = dev_type_enum(o->dev, o->dev_type);
    if (ce->proto == PROTO_TCP_CLIENT && !ce->local && !ce->local_port_defined && !ce->bind_defined)
    {
        ce->bind_local = 0;
    }

    if (ce->proto == PROTO_UDP && ce->socks_proxy_server && !ce->local && !ce->local_port_defined && !ce->bind_defined)
    {
        ce->bind_local = 0;
    }

    if (!ce->bind_local)
    {
        ce->local_port = ((void*)0);
    }


    if (o->proto_force >= 0 && o->proto_force != ce->proto)
    {
        ce->flags |= CE_DISABLED;
    }





    if (o->ce.mssfix_default)
    {






        msg(M_USAGE, "--mssfix must specify a parameter");

    }




    if (ce->socks_proxy_server && proto_is_udp(ce->proto) && ce->af != AF_INET)
    {
        if (ce->af == AF_INET6)
        {
            msg(M_INFO, "WARNING: '--proto udp6' is not compatible with "
                "'--socks-proxy' today.  Forcing IPv4 mode." );
        }
        else
        {
            msg(M_INFO, "NOTICE: dual-stack mode for '--proto udp' does not "
                "work correctly with '--socks-proxy' today.  Forcing IPv4." );
        }
        ce->af = AF_INET;
    }




    {
        if (!ce->tun_mtu_defined && !ce->link_mtu_defined)
        {
            ce->tun_mtu_defined = 1;
        }
        if ((dev == DEV_TYPE_TAP) && !ce->tun_mtu_extra_defined)
        {
            ce->tun_mtu_extra_defined = 1;
            ce->tun_mtu_extra = TAP_MTU_EXTRA_DEFAULT;
        }
    }







    if (!ce->tls_auth_file && !ce->tls_crypt_file && !ce->tls_crypt_v2_file)
    {
        ce->tls_auth_file = o->tls_auth_file;
        ce->tls_auth_file_inline = o->tls_auth_file_inline;
        ce->key_direction = o->key_direction;

        ce->tls_crypt_file = o->tls_crypt_file;
        ce->tls_crypt_inline = o->tls_crypt_inline;

        ce->tls_crypt_v2_file = o->tls_crypt_v2_file;
        ce->tls_crypt_v2_inline = o->tls_crypt_v2_inline;
    }




    if (o->persist_key)
    {
        if (ce->tls_auth_file && !ce->tls_auth_file_inline)
        {
            struct buffer in = buffer_read_from_file(ce->tls_auth_file, &o->gc);
            if (!buf_valid(&in))
            {
                msg(M_FATAL, "Cannot pre-load tls-auth keyfile (%s)",
                    ce->tls_auth_file);
            }

            ce->tls_auth_file = INLINE_FILE_TAG;
            ce->tls_auth_file_inline = (char *)in.data;
        }

        if (ce->tls_crypt_file && !ce->tls_crypt_inline)
        {
            struct buffer in = buffer_read_from_file(ce->tls_crypt_file, &o->gc);
            if (!buf_valid(&in))
            {
                msg(M_FATAL, "Cannot pre-load tls-crypt keyfile (%s)",
                    ce->tls_crypt_file);
            }

            ce->tls_crypt_file = INLINE_FILE_TAG;
            ce->tls_crypt_inline = (char *)in.data;
        }
    }
}

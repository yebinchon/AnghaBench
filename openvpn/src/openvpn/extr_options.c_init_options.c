
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int txqueuelen; int dhcp_lease_time; scalar_t__ dhcp_masq_offset; int ip_win32_type; } ;
struct TYPE_3__ {int bind_ipv6_only; int connect_retry_seconds; int connect_retry_seconds_max; int connect_timeout; int bind_local; int mtu_discover_type; int mssfix; int link_mtu; int tun_mtu; int remote_port; int local_port; int af; int proto; } ;
struct options {int gc_owned; int verbosity; int status_file_update_freq; int status_file_version; int route_delay_window; int resolve_in_advance; int proto_force; int occ; int management_log_history_cache; int management_echo_buffer_size; int management_state_buffer_size; int persist_mode; int block_outside_dns; int wintun; int vlan_pvid; int real_hash_size; int virtual_hash_size; int n_bcast_buf; int tcp_queue_limit; int max_clients; int max_routes_per_client; int ifconfig_pool_persist_refresh_freq; int scheduled_exit_interval; char* ciphername; int ncp_enabled; char* ncp_ciphers; char* authname; char* prng_hash; int prng_nonce_secret_len; int replay; int use_prediction_resistance; int key_method; int tls_timeout; int renegotiate_bytes; int renegotiate_seconds; int renegotiate_seconds_min; int handshake_window; int transition_window; int pkcs11_pin_cache_period; int auth_token_generate; char* tmp_dir; int allow_recursive_routing; int x509_username_field; int * ecdh_curve; int * tls_cert_profile; int key_direction; int replay_time; int replay_window; scalar_t__ stale_routes_check_interval; int vlan_accept; int route_method; TYPE_2__ tuntap_options; int resolve_retry_seconds; TYPE_1__ ce; scalar_t__ connect_retry_max; int topology; int mode; int gc; } ;


 int AF_UNSPEC ;
 int CLEAR (struct options) ;
 int DEFAULT_SEQ_BACKTRACK ;
 int DEFAULT_TIME_BACKTRACK ;
 int IPW32_SET_ADAPTIVE ;
 int IPW32_SET_DHCP_MASQ ;
 int KEY_DIRECTION_BIDIRECTIONAL ;
 int LINK_MTU_DEFAULT ;
 int MODE_POINT_TO_POINT ;
 int MSSFIX_DEFAULT ;
 int OPENVPN_PORT ;
 int PROTO_UDP ;
 int RESOLV_RETRY_INFINITE ;
 int ROUTE_METHOD_ADAPTIVE ;
 int TOP_NET30 ;
 int TUN_MTU_DEFAULT ;
 int VLAN_ALL ;
 int X509_USERNAME_FIELD_DEFAULT ;
 int gc_init (int *) ;
 char* getenv (char*) ;
 char* win_get_tempdir () ;

void
init_options(struct options *o, const bool init_gc)
{
    CLEAR(*o);
    if (init_gc)
    {
        gc_init(&o->gc);
        o->gc_owned = 1;
    }
    o->mode = MODE_POINT_TO_POINT;
    o->topology = TOP_NET30;
    o->ce.proto = PROTO_UDP;
    o->ce.af = AF_UNSPEC;
    o->ce.bind_ipv6_only = 0;
    o->ce.connect_retry_seconds = 5;
    o->ce.connect_retry_seconds_max = 300;
    o->ce.connect_timeout = 120;
    o->connect_retry_max = 0;
    o->ce.local_port = o->ce.remote_port = OPENVPN_PORT;
    o->verbosity = 1;
    o->status_file_update_freq = 60;
    o->status_file_version = 1;
    o->ce.bind_local = 1;
    o->ce.tun_mtu = TUN_MTU_DEFAULT;
    o->ce.link_mtu = LINK_MTU_DEFAULT;
    o->ce.mtu_discover_type = -1;
    o->ce.mssfix = MSSFIX_DEFAULT;
    o->route_delay_window = 30;
    o->resolve_retry_seconds = RESOLV_RETRY_INFINITE;
    o->resolve_in_advance = 0;
    o->proto_force = -1;
    o->vlan_accept = VLAN_ALL;
    o->vlan_pvid = 1;
    o->ciphername = "BF-CBC";



    o->ncp_enabled = 0;

    o->ncp_ciphers = "AES-256-GCM:AES-128-GCM";
    o->authname = "SHA1";
    o->prng_hash = "SHA1";
    o->prng_nonce_secret_len = 16;
    o->replay = 1;
    o->replay_window = DEFAULT_SEQ_BACKTRACK;
    o->replay_time = DEFAULT_TIME_BACKTRACK;
    o->key_direction = KEY_DIRECTION_BIDIRECTIONAL;



    o->key_method = 2;
    o->tls_timeout = 2;
    o->renegotiate_bytes = -1;
    o->renegotiate_seconds = 3600;
    o->renegotiate_seconds_min = -1;
    o->handshake_window = 60;
    o->transition_window = 3600;
    o->tls_cert_profile = ((void*)0);
    o->ecdh_curve = ((void*)0);
    o->allow_recursive_routing = 0;
}

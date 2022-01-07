
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ssl_enable; int ssl_passwords; int ssl_certificate_key; int ssl_certificate; int ssl_crl; int ssl_trusted_certificate; int ssl_verify_depth; scalar_t__ ssl_verify; scalar_t__ ssl_server_name; int * ssl_name; int ssl_ciphers; int ssl_protocols; scalar_t__ ssl_session_reuse; scalar_t__ socket_keepalive; int local; scalar_t__ proxy_protocol; scalar_t__ next_upstream; int next_upstream_tries; int responses; int requests; int * download_rate; int * upload_rate; int buffer_size; int next_upstream_timeout; int timeout; int connect_timeout; } ;
typedef TYPE_1__ ngx_stream_proxy_srv_conf_t ;
typedef int ngx_conf_t ;


 int NGX_CONF_BITMASK_SET ;
 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_MAX_INT32_VALUE ;
 scalar_t__ NGX_OK ;
 int NGX_SSL_TLSv1 ;
 int NGX_SSL_TLSv1_1 ;
 int NGX_SSL_TLSv1_2 ;
 int ngx_conf_merge_bitmask_value (int ,int ,int) ;
 int ngx_conf_merge_msec_value (int ,int ,int) ;
 int ngx_conf_merge_ptr_value (int ,int ,int *) ;
 int ngx_conf_merge_size_value (int ,int ,int) ;
 int ngx_conf_merge_str_value (int ,int ,char*) ;
 int ngx_conf_merge_uint_value (int ,int ,int) ;
 int ngx_conf_merge_value (scalar_t__,scalar_t__,int) ;
 scalar_t__ ngx_stream_proxy_set_ssl (int *,TYPE_1__*) ;

__attribute__((used)) static char *
ngx_stream_proxy_merge_srv_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_stream_proxy_srv_conf_t *prev = parent;
    ngx_stream_proxy_srv_conf_t *conf = child;

    ngx_conf_merge_msec_value(conf->connect_timeout,
                              prev->connect_timeout, 60000);

    ngx_conf_merge_msec_value(conf->timeout,
                              prev->timeout, 10 * 60000);

    ngx_conf_merge_msec_value(conf->next_upstream_timeout,
                              prev->next_upstream_timeout, 0);

    ngx_conf_merge_size_value(conf->buffer_size,
                              prev->buffer_size, 16384);

    if (conf->upload_rate == ((void*)0)) {
        conf->upload_rate = prev->upload_rate;
    }

    if (conf->download_rate == ((void*)0)) {
        conf->download_rate = prev->download_rate;
    }

    ngx_conf_merge_uint_value(conf->requests,
                              prev->requests, 0);

    ngx_conf_merge_uint_value(conf->responses,
                              prev->responses, NGX_MAX_INT32_VALUE);

    ngx_conf_merge_uint_value(conf->next_upstream_tries,
                              prev->next_upstream_tries, 0);

    ngx_conf_merge_value(conf->next_upstream, prev->next_upstream, 1);

    ngx_conf_merge_value(conf->proxy_protocol, prev->proxy_protocol, 0);

    ngx_conf_merge_ptr_value(conf->local, prev->local, ((void*)0));

    ngx_conf_merge_value(conf->socket_keepalive,
                              prev->socket_keepalive, 0);
    return NGX_CONF_OK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_11__ ;


typedef int uint8_t ;
struct crypto_options {int dummy; } ;
struct context_buffers {int read_tun_buf; int encrypt_buf; int compress_buf; } ;
struct TYPE_20__ {scalar_t__ len; int * data; } ;
struct TYPE_18__ {scalar_t__ context_auth; TYPE_5__ buf; int to_link; int to_link_addr; TYPE_3__* tls_multi; struct crypto_options crypto_options; int frame; int frame_fragment; scalar_t__ fragment; TYPE_11__* comp_context; struct context_buffers* buffers; } ;
struct context {TYPE_2__ c2; } ;
struct TYPE_19__ {scalar_t__ use_peer_id; } ;
struct TYPE_17__ {int (* compress ) (TYPE_5__*,int ,TYPE_11__*,int *) ;} ;
struct TYPE_16__ {TYPE_1__ alg; } ;


 int ASSERT (int ) ;
 scalar_t__ CAS_SUCCEEDED ;
 int FRAME_HEADROOM (int *) ;
 int buf_init (int *,int ) ;
 int buffer_turnover (int const*,int *,TYPE_5__*,int *) ;
 int fragment_outgoing (scalar_t__,TYPE_5__*,int *) ;
 int get_link_socket_info (struct context*) ;
 int link_socket_get_outgoing_addr (TYPE_5__*,int ,int *) ;
 int openvpn_encrypt (TYPE_5__*,int ,struct crypto_options*) ;
 int stub1 (TYPE_5__*,int ,TYPE_11__*,int *) ;
 int tls_post_encrypt (TYPE_3__*,TYPE_5__*) ;
 int tls_pre_encrypt (TYPE_3__*,TYPE_5__*,struct crypto_options**) ;
 int tls_prepend_opcode_v1 (TYPE_3__*,TYPE_5__*) ;
 int tls_prepend_opcode_v2 (TYPE_3__*,int *) ;

void
encrypt_sign(struct context *c, bool comp_frag)
{
    struct context_buffers *b = c->c2.buffers;
    const uint8_t *orig_buf = c->c2.buf.data;
    struct crypto_options *co = ((void*)0);
    if (comp_frag)
    {
    }


    ASSERT(buf_init(&b->encrypt_buf, FRAME_HEADROOM(&c->c2.frame)));

    if (c->c2.tls_multi)
    {

        tls_pre_encrypt(c->c2.tls_multi, &c->c2.buf, &co);



        if (c->c2.buf.len > 0 && c->c2.tls_multi->use_peer_id)
        {
            tls_prepend_opcode_v2(c->c2.tls_multi, &b->encrypt_buf);
        }
    }
    else
    {
        co = &c->c2.crypto_options;
    }


    openvpn_encrypt(&c->c2.buf, b->encrypt_buf, co);


    if (c->c2.tls_multi)
    {
        if (c->c2.buf.len > 0 && !c->c2.tls_multi->use_peer_id)
        {
            tls_prepend_opcode_v1(c->c2.tls_multi, &c->c2.buf);
        }
        tls_post_encrypt(c->c2.tls_multi, &c->c2.buf);
    }




    link_socket_get_outgoing_addr(&c->c2.buf, get_link_socket_info(c),
                                  &c->c2.to_link_addr);


    buffer_turnover(orig_buf, &c->c2.to_link, &c->c2.buf, &b->read_tun_buf);
}

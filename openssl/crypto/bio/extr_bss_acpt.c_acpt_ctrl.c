
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int init; int num; int shutdown; int flags; scalar_t__ ptr; } ;
struct TYPE_8__ {char* param_serv; char* param_addr; int bind_mode; int accept_family; int accepted_mode; int accept_sock; char* cache_accepting_name; char* cache_accepting_serv; char* cache_peer_name; char* cache_peer_serv; int addr_iter; int state; TYPE_2__* bio_chain; int * addr_first; } ;
typedef TYPE_1__ BIO_ACCEPT ;
typedef TYPE_2__ BIO ;


 int ACPT_S_ACCEPT ;
 int ACPT_S_BEFORE ;


 int BIO_ADDRINFO_family (int ) ;
 int BIO_ADDRINFO_free (int *) ;
 long BIO_FAMILY_IPV4 ;
 long BIO_FAMILY_IPV6 ;
 int BIO_PARSE_PRIO_SERV ;
 int BIO_SOCK_NONBLOCK ;
 int BIO_free (TYPE_2__*) ;
 long BIO_parse_hostserv (void*,char**,char**,int ) ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_strdup (void*) ;
 int acpt_close_socket (TYPE_2__*) ;
 scalar_t__ acpt_state (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static long acpt_ctrl(BIO *b, int cmd, long num, void *ptr)
{
    int *ip;
    long ret = 1;
    BIO_ACCEPT *data;
    char **pp;

    data = (BIO_ACCEPT *)b->ptr;

    switch (cmd) {
    case 138:
        ret = 0;
        data->state = ACPT_S_BEFORE;
        acpt_close_socket(b);
        BIO_ADDRINFO_free(data->addr_first);
        data->addr_first = ((void*)0);
        b->flags = 0;
        break;
    case 135:

        ret = (long)acpt_state(b, data);
        break;
    case 131:
        if (ptr != ((void*)0)) {
            if (num == 0) {
                char *hold_serv = data->param_serv;




                OPENSSL_free(data->param_addr);
                data->param_addr = ((void*)0);
                ret = BIO_parse_hostserv(ptr,
                                         &data->param_addr,
                                         &data->param_serv,
                                         BIO_PARSE_PRIO_SERV);
                if (hold_serv != data->param_serv)
                    OPENSSL_free(hold_serv);
                b->init = 1;
            } else if (num == 1) {
                OPENSSL_free(data->param_serv);
                data->param_serv = OPENSSL_strdup(ptr);
                b->init = 1;
            } else if (num == 2) {
                data->bind_mode |= BIO_SOCK_NONBLOCK;
            } else if (num == 3) {
                BIO_free(data->bio_chain);
                data->bio_chain = (BIO *)ptr;
            } else if (num == 4) {
                data->accept_family = *(int *)ptr;
            }
        } else {
            if (num == 2) {
                data->bind_mode &= ~BIO_SOCK_NONBLOCK;
            }
        }
        break;
    case 128:
        if (num != 0)
            data->accepted_mode |= BIO_SOCK_NONBLOCK;
        else
            data->accepted_mode &= ~BIO_SOCK_NONBLOCK;
        break;
    case 129:
        b->num = *((int *)ptr);
        data->accept_sock = b->num;
        data->state = ACPT_S_ACCEPT;
        b->shutdown = (int)num;
        b->init = 1;
        break;
    case 132:
        if (b->init) {
            ip = (int *)ptr;
            if (ip != ((void*)0))
                *ip = data->accept_sock;
            ret = data->accept_sock;
        } else
            ret = -1;
        break;
    case 134:
        if (b->init) {
            if (num == 0 && ptr != ((void*)0)) {
                pp = (char **)ptr;
                *pp = data->cache_accepting_name;
            } else if (num == 1 && ptr != ((void*)0)) {
                pp = (char **)ptr;
                *pp = data->cache_accepting_serv;
            } else if (num == 2 && ptr != ((void*)0)) {
                pp = (char **)ptr;
                *pp = data->cache_peer_name;
            } else if (num == 3 && ptr != ((void*)0)) {
                pp = (char **)ptr;
                *pp = data->cache_peer_serv;
            } else if (num == 4) {
                switch (BIO_ADDRINFO_family(data->addr_iter)) {

                case 143:
                    ret = BIO_FAMILY_IPV6;
                    break;

                case 144:
                    ret = BIO_FAMILY_IPV4;
                    break;
                case 0:
                    ret = data->accept_family;
                    break;
                default:
                    ret = -1;
                    break;
                }
            } else
                ret = -1;
        } else
            ret = -1;
        break;
    case 140:
        ret = b->shutdown;
        break;
    case 137:
        b->shutdown = (int)num;
        break;
    case 139:
    case 136:
        ret = 0;
        break;
    case 141:
        break;
    case 130:
        data->bind_mode = (int)num;
        break;
    case 133:
        ret = (long)data->bind_mode;
        break;
    case 142:
        break;

    default:
        ret = 0;
        break;
    }
    return ret;
}

#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int init; int num; long shutdown; int /*<<< orphan*/  flags; scalar_t__ ptr; } ;
struct TYPE_12__ {char* param_hostname; char* param_service; long connect_family; int connect_mode; int /*<<< orphan*/ * info_callback; int /*<<< orphan*/ * addr_iter; int /*<<< orphan*/ * addr_first; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  BIO_info_cb ;
typedef  TYPE_1__ BIO_CONNECT ;
typedef  int /*<<< orphan*/  BIO_ADDR ;
typedef  TYPE_2__ BIO ;

/* Variables and functions */
#define  AF_INET 144 
#define  AF_INET6 143 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/  const*,int) ; 
 char* FUNC4 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  BIO_CONN_S_BEFORE ; 
 int /*<<< orphan*/  BIO_CONN_S_OK ; 
#define  BIO_CTRL_DUP 142 
#define  BIO_CTRL_FLUSH 141 
#define  BIO_CTRL_GET_CALLBACK 140 
#define  BIO_CTRL_GET_CLOSE 139 
#define  BIO_CTRL_PENDING 138 
#define  BIO_CTRL_RESET 137 
#define  BIO_CTRL_SET_CALLBACK 136 
#define  BIO_CTRL_SET_CLOSE 135 
#define  BIO_CTRL_WPENDING 134 
#define  BIO_C_DO_STATE_MACHINE 133 
#define  BIO_C_GET_CONNECT 132 
#define  BIO_C_GET_FD 131 
#define  BIO_C_SET_CONNECT 130 
#define  BIO_C_SET_CONNECT_MODE 129 
#define  BIO_C_SET_NBIO 128 
 long BIO_FAMILY_IPV4 ; 
 long BIO_FAMILY_IPV6 ; 
 int /*<<< orphan*/  BIO_PARSE_PRIO_HOST ; 
 int BIO_SOCK_NONBLOCK ; 
 long FUNC5 (void*,char**,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 scalar_t__ FUNC14 (TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static long FUNC15(BIO *b, int cmd, long num, void *ptr)
{
    BIO *dbio;
    int *ip;
    const char **pptr = NULL;
    long ret = 1;
    BIO_CONNECT *data;

    data = (BIO_CONNECT *)b->ptr;

    switch (cmd) {
    case BIO_CTRL_RESET:
        ret = 0;
        data->state = BIO_CONN_S_BEFORE;
        FUNC13(b);
        FUNC2(data->addr_first);
        data->addr_first = NULL;
        b->flags = 0;
        break;
    case BIO_C_DO_STATE_MACHINE:
        /* use this one to start the connection */
        if (data->state != BIO_CONN_S_OK)
            ret = (long)FUNC14(b, data);
        else
            ret = 1;
        break;
    case BIO_C_GET_CONNECT:
        if (ptr != NULL) {
            pptr = (const char **)ptr;
            if (num == 0) {
                *pptr = data->param_hostname;
            } else if (num == 1) {
                *pptr = data->param_service;
            } else if (num == 2) {
                *pptr = (const char *)FUNC0(data->addr_iter);
            } else if (num == 3) {
                switch (FUNC1(data->addr_iter)) {
# ifdef AF_INET6
                case AF_INET6:
                    ret = BIO_FAMILY_IPV6;
                    break;
# endif
                case AF_INET:
                    ret = BIO_FAMILY_IPV4;
                    break;
                case 0:
                    ret = data->connect_family;
                    break;
                default:
                    ret = -1;
                    break;
                }
            } else {
                ret = 0;
            }
        } else {
            ret = 0;
        }
        break;
    case BIO_C_SET_CONNECT:
        if (ptr != NULL) {
            b->init = 1;
            if (num == 0) {
                char *hold_service = data->param_service;
                /* We affect the hostname regardless.  However, the input
                 * string might contain a host:service spec, so we must
                 * parse it, which might or might not affect the service
                 */
                FUNC11(data->param_hostname);
                data->param_hostname = NULL;
                ret = FUNC5(ptr,
                                         &data->param_hostname,
                                         &data->param_service,
                                         BIO_PARSE_PRIO_HOST);
                if (hold_service != data->param_service)
                    FUNC11(hold_service);
            } else if (num == 1) {
                FUNC11(data->param_service);
                data->param_service = FUNC12(ptr);
            } else if (num == 2) {
                const BIO_ADDR *addr = (const BIO_ADDR *)ptr;
                if (ret) {
                    data->param_hostname = FUNC3(addr, 1);
                    data->param_service = FUNC4(addr, 1);
                    FUNC2(data->addr_first);
                    data->addr_first = NULL;
                    data->addr_iter = NULL;
                }
            } else if (num == 3) {
                data->connect_family = *(int *)ptr;
            } else {
                ret = 0;
            }
        }
        break;
    case BIO_C_SET_NBIO:
        if (num != 0)
            data->connect_mode |= BIO_SOCK_NONBLOCK;
        else
            data->connect_mode &= ~BIO_SOCK_NONBLOCK;
        break;
    case BIO_C_SET_CONNECT_MODE:
        data->connect_mode = (int)num;
        break;
    case BIO_C_GET_FD:
        if (b->init) {
            ip = (int *)ptr;
            if (ip != NULL)
                *ip = b->num;
            ret = b->num;
        } else
            ret = -1;
        break;
    case BIO_CTRL_GET_CLOSE:
        ret = b->shutdown;
        break;
    case BIO_CTRL_SET_CLOSE:
        b->shutdown = (int)num;
        break;
    case BIO_CTRL_PENDING:
    case BIO_CTRL_WPENDING:
        ret = 0;
        break;
    case BIO_CTRL_FLUSH:
        break;
    case BIO_CTRL_DUP:
        {
            dbio = (BIO *)ptr;
            if (data->param_hostname)
                FUNC6(dbio, data->param_hostname);
            if (data->param_service)
                FUNC9(dbio, data->param_service);
            FUNC7(dbio, data->connect_family);
            FUNC8(dbio, data->connect_mode);
            /*
             * FIXME: the cast of the function seems unlikely to be a good
             * idea
             */
            (void)FUNC10(dbio, data->info_callback);
        }
        break;
    case BIO_CTRL_SET_CALLBACK:
        ret = 0; /* use callback ctrl */
        break;
    case BIO_CTRL_GET_CALLBACK:
        {
            BIO_info_cb **fptr;

            fptr = (BIO_info_cb **)ptr;
            *fptr = data->info_callback;
        }
        break;
    default:
        ret = 0;
        break;
    }
    return ret;
}
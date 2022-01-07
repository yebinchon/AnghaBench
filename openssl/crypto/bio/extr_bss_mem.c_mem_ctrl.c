
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int flags; int num; int shutdown; scalar_t__ ptr; } ;
struct TYPE_8__ {TYPE_1__* buf; TYPE_1__* readp; } ;
struct TYPE_7__ {scalar_t__ length; int * data; int max; } ;
typedef TYPE_1__ BUF_MEM ;
typedef TYPE_2__ BIO_BUF_MEM ;
typedef TYPE_3__ BIO ;
 int BIO_FLAGS_MEM_RDONLY ;
 int BIO_FLAGS_NONCLEAR_RST ;
 int mem_buf_free (TYPE_3__*) ;
 int mem_buf_sync (TYPE_3__*) ;
 int memset (int *,int ,int ) ;

__attribute__((used)) static long mem_ctrl(BIO *b, int cmd, long num, void *ptr)
{
    long ret = 1;
    char **pptr;
    BIO_BUF_MEM *bbm = (BIO_BUF_MEM *)b->ptr;
    BUF_MEM *bm;

    if (b->flags & BIO_FLAGS_MEM_RDONLY)
        bm = bbm->buf;
    else
        bm = bbm->readp;

    switch (cmd) {
    case 133:
        bm = bbm->buf;
        if (bm->data != ((void*)0)) {
            if (!(b->flags & BIO_FLAGS_MEM_RDONLY)) {
                if (!(b->flags & BIO_FLAGS_NONCLEAR_RST)) {
                    memset(bm->data, 0, bm->max);
                    bm->length = 0;
                }
                *bbm->readp = *bbm->buf;
            } else {

                *bbm->buf = *bbm->readp;
            }
        }
        break;
    case 140:
        ret = (long)(bm->length == 0);
        break;
    case 128:
        b->num = (int)num;
        break;
    case 137:
        ret = (long)bm->length;
        if (ptr != ((void*)0)) {
            pptr = (char **)ptr;
            *pptr = (char *)&(bm->data[0]);
        }
        break;
    case 129:
        mem_buf_free(b);
        b->shutdown = (int)num;
        bbm->buf = ptr;
        *bbm->readp = *bbm->buf;
        break;
    case 130:
        if (ptr != ((void*)0)) {
            if (!(b->flags & BIO_FLAGS_MEM_RDONLY))
                mem_buf_sync(b);
            bm = bbm->buf;
            pptr = (char **)ptr;
            *pptr = (char *)bm;
        }
        break;
    case 138:
        ret = (long)b->shutdown;
        break;
    case 132:
        b->shutdown = (int)num;
        break;
    case 131:
        ret = 0L;
        break;
    case 136:
        ret = (long)bm->length;
        break;
    case 141:
    case 139:
        ret = 1;
        break;
    case 134:
    case 135:
    default:
        ret = 0;
        break;
    }
    return ret;
}

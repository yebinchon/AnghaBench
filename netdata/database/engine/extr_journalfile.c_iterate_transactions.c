
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ result; } ;
typedef TYPE_2__ uv_fs_t ;
typedef int uv_file ;
typedef int uv_buf_t ;
typedef unsigned int uint64_t ;
struct rrdengine_journalfile {unsigned int pos; int file; } ;
struct TYPE_5__ {unsigned int io_read_bytes; int io_read_requests; } ;
struct rrdengine_instance {TYPE_1__ stats; } ;
struct rrdeng_jf_sb {int dummy; } ;


 unsigned int ALIGN_BYTES_FLOOR (scalar_t__) ;
 unsigned int MAX (unsigned int,unsigned int) ;
 unsigned int MIN (scalar_t__,unsigned int) ;
 scalar_t__ READAHEAD_BYTES ;
 scalar_t__ RRDENG_BLOCK_SIZE ;
 int RRDFILE_ALIGNMENT ;
 int assert (int) ;
 int fatal (char*,int ) ;
 int free (void*) ;
 int posix_memalign (void*,int ,scalar_t__) ;
 int replay_transaction (struct rrdengine_instance*,struct rrdengine_journalfile*,void*,unsigned int*,unsigned int) ;
 int strerror (int) ;
 scalar_t__ unlikely (int) ;
 int uv_buf_init (void*,unsigned int) ;
 int uv_fs_read (int *,TYPE_2__*,int ,int *,int,unsigned int,int *) ;
 int uv_fs_req_cleanup (TYPE_2__*) ;
 int uv_strerror (int) ;

__attribute__((used)) static uint64_t iterate_transactions(struct rrdengine_instance *ctx, struct rrdengine_journalfile *journalfile)
{
    uv_file file;
    uint64_t file_size;
    int ret;
    uint64_t pos, pos_i, max_id, id;
    unsigned size_bytes;
    void *buf;
    uv_buf_t iov;
    uv_fs_t req;

    file = journalfile->file;
    file_size = journalfile->pos;


    max_id = 1;
    ret = posix_memalign((void *)&buf, RRDFILE_ALIGNMENT, READAHEAD_BYTES);
    if (unlikely(ret)) {
        fatal("posix_memalign:%s", strerror(ret));
    }

    for (pos = sizeof(struct rrdeng_jf_sb) ; pos < file_size ; pos += READAHEAD_BYTES) {
        size_bytes = MIN(READAHEAD_BYTES, file_size - pos);
        iov = uv_buf_init(buf, size_bytes);
        ret = uv_fs_read(((void*)0), &req, file, &iov, 1, pos, ((void*)0));
        if (ret < 0) {
            fatal("uv_fs_read: %s", uv_strerror(ret));

        }
        assert(req.result >= 0);
        uv_fs_req_cleanup(&req);
        ctx->stats.io_read_bytes += size_bytes;
        ++ctx->stats.io_read_requests;



        for (pos_i = 0 ; pos_i < size_bytes ; ) {
            unsigned max_size;

            max_size = pos + size_bytes - pos_i;
            ret = replay_transaction(ctx, journalfile, buf + pos_i, &id, max_size);
            if (!ret)

                pos_i = ALIGN_BYTES_FLOOR(pos_i + RRDENG_BLOCK_SIZE);
            else
                pos_i += ret;
            max_id = MAX(max_id, id);
        }
    }

    free(buf);
    return max_id;
}

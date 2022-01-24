#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ result; } ;
typedef  TYPE_2__ uv_fs_t ;
typedef  int /*<<< orphan*/  uv_file ;
typedef  int /*<<< orphan*/  uv_buf_t ;
typedef  unsigned int uint64_t ;
struct rrdengine_journalfile {unsigned int pos; int /*<<< orphan*/  file; } ;
struct TYPE_5__ {unsigned int io_read_bytes; int /*<<< orphan*/  io_read_requests; } ;
struct rrdengine_instance {TYPE_1__ stats; } ;
struct rrdeng_jf_sb {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 unsigned int FUNC2 (scalar_t__,unsigned int) ; 
 scalar_t__ READAHEAD_BYTES ; 
 scalar_t__ RRDENG_BLOCK_SIZE ; 
 int /*<<< orphan*/  RRDFILE_ALIGNMENT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int FUNC6 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (struct rrdengine_instance*,struct rrdengine_journalfile*,void*,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (void*,unsigned int) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static uint64_t FUNC14(struct rrdengine_instance *ctx, struct rrdengine_journalfile *journalfile)
{
    uv_file file;
    uint64_t file_size;//, data_file_size;
    int ret;
    uint64_t pos, pos_i, max_id, id;
    unsigned size_bytes;
    void *buf;
    uv_buf_t iov;
    uv_fs_t req;

    file = journalfile->file;
    file_size = journalfile->pos;
    //data_file_size = journalfile->datafile->pos; TODO: utilize this?

    max_id = 1;
    ret = FUNC6((void *)&buf, RRDFILE_ALIGNMENT, READAHEAD_BYTES);
    if (FUNC9(ret)) {
        FUNC4("posix_memalign:%s", FUNC8(ret));
    }

    for (pos = sizeof(struct rrdeng_jf_sb) ; pos < file_size ; pos += READAHEAD_BYTES) {
        size_bytes = FUNC2(READAHEAD_BYTES, file_size - pos);
        iov = FUNC10(buf, size_bytes);
        ret = FUNC11(NULL, &req, file, &iov, 1, pos, NULL);
        if (ret < 0) {
            FUNC4("uv_fs_read: %s", FUNC13(ret));
            /*uv_fs_req_cleanup(&req);*/
        }
        FUNC3(req.result >= 0);
        FUNC12(&req);
        ctx->stats.io_read_bytes += size_bytes;
        ++ctx->stats.io_read_requests;

        //pos_i = pos;
        //while (pos_i < pos + size_bytes) {
        for (pos_i = 0 ; pos_i < size_bytes ; ) {
            unsigned max_size;

            max_size = pos + size_bytes - pos_i;
            ret = FUNC7(ctx, journalfile, buf + pos_i, &id, max_size);
            if (!ret) /* TODO: support transactions bigger than 4K */
                /* unknown transaction size, move on to the next block */
                pos_i = FUNC0(pos_i + RRDENG_BLOCK_SIZE);
            else
                pos_i += ret;
            max_id = FUNC1(max_id, id);
        }
    }

    FUNC5(buf);
    return max_id;
}
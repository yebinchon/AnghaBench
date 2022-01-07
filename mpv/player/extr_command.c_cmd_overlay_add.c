
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct overlay {int x; int y; TYPE_3__* source; } ;
struct mp_cmd_ctx {int success; TYPE_2__* args; struct MPContext* mpctx; } ;
struct MPContext {int dummy; } ;
struct TYPE_7__ {int * stride; int * planes; } ;
struct TYPE_5__ {int i; char* s; } ;
struct TYPE_6__ {TYPE_1__ v; } ;


 int IMGFMT_BGRA ;
 void* MAP_FAILED ;
 int MAP_SHARED ;
 int MP_ERR (struct MPContext*,char*,...) ;
 int O_BINARY ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 int PROT_READ ;
 int close (int) ;
 int memcpy_pic (int ,char*,int,int,int ,int) ;
 void* mmap (int *,int,int ,int ,int,int ) ;
 TYPE_3__* mp_image_alloc (int ,int,int) ;
 int munmap (void*,int) ;
 int open (char*,int) ;
 int replace_overlay (struct MPContext*,int,struct overlay*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strtol (char*,char**,int) ;
 unsigned long long strtoull (char*,char**,int ) ;
 int talloc_free (TYPE_3__*) ;

__attribute__((used)) static void cmd_overlay_add(void *pcmd)
{
    struct mp_cmd_ctx *cmd = pcmd;
    struct MPContext *mpctx = cmd->mpctx;
    int id = cmd->args[0].v.i, x = cmd->args[1].v.i, y = cmd->args[2].v.i;
    char *file = cmd->args[3].v.s;
    int offset = cmd->args[4].v.i;
    char *fmt = cmd->args[5].v.s;
    int w = cmd->args[6].v.i, h = cmd->args[7].v.i, stride = cmd->args[8].v.i;

    if (strcmp(fmt, "bgra") != 0) {
        MP_ERR(mpctx, "overlay-add: unsupported OSD format '%s'\n", fmt);
        goto error;
    }
    if (id < 0 || id >= 64) {
        MP_ERR(mpctx, "overlay-add: invalid id %d\n", id);
        goto error;
    }
    if (w <= 0 || h <= 0 || stride < w * 4 || (stride % 4)) {
        MP_ERR(mpctx, "overlay-add: inconsistent parameters\n");
        goto error;
    }
    struct overlay overlay = {
        .source = mp_image_alloc(IMGFMT_BGRA, w, h),
        .x = x,
        .y = y,
    };
    if (!overlay.source)
        goto error;
    int fd = -1;
    bool close_fd = 1;
    void *p = ((void*)0);
    if (file[0] == '@') {
        char *end;
        fd = strtol(&file[1], &end, 10);
        if (!file[1] || end[0])
            fd = -1;
        close_fd = 0;
    } else if (file[0] == '&') {
        char *end;
        unsigned long long addr = strtoull(&file[1], &end, 0);
        if (!file[1] || end[0])
            addr = 0;
        p = (void *)(uintptr_t)addr;
    } else {
        fd = open(file, O_RDONLY | O_BINARY | O_CLOEXEC);
    }
    int map_size = 0;
    if (fd >= 0) {
        map_size = offset + h * stride;
        void *m = mmap(((void*)0), map_size, PROT_READ, MAP_SHARED, fd, 0);
        if (close_fd)
            close(fd);
        if (m && m != MAP_FAILED)
            p = m;
    }
    if (!p) {
        MP_ERR(mpctx, "overlay-add: could not open or map '%s'\n", file);
        talloc_free(overlay.source);
        goto error;
    }
    memcpy_pic(overlay.source->planes[0], (char *)p + offset, w * 4, h,
               overlay.source->stride[0], stride);
    if (map_size)
        munmap(p, map_size);

    replace_overlay(mpctx, id, &overlay);
    return;
error:
    cmd->success = 0;
}

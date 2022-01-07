
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ result; } ;
typedef TYPE_1__ uv_fs_t ;
typedef scalar_t__ uv_file ;


 int F_NOCACHE ;
 int O_DIRECT ;
 int S_IRUSR ;
 int S_IWUSR ;
 int UV_EINVAL ;
 int assert (int) ;
 int error (char*,char*) ;
 int fcntl (int,int ,int) ;
 int info (char*,char*) ;
 int uv_fs_open (int *,TYPE_1__*,char*,int,int,int *) ;
 int uv_fs_req_cleanup (TYPE_1__*) ;

int open_file_direct_io(char *path, int flags, uv_file *file)
{
    uv_fs_t req;
    int fd, current_flags, direct;

    for (direct = 1 ; direct >= 0 ; --direct) {




        current_flags = flags;
        if (direct) {
            current_flags |= O_DIRECT;
        }
        fd = uv_fs_open(((void*)0), &req, path, current_flags, S_IRUSR | S_IWUSR, ((void*)0));
        if (fd < 0) {
            if ((direct) && (UV_EINVAL == fd)) {
                error("File \"%s\" does not support direct I/O, falling back to buffered I/O.", path);
            } else {
                error("Failed to open file \"%s\".", path);
                --direct;
            }
        } else {
            assert(req.result >= 0);
            *file = req.result;




            --direct;
        }
        uv_fs_req_cleanup(&req);
    }

    return fd;
}

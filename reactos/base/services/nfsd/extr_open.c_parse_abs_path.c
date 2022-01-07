
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int len; int* path; } ;
typedef TYPE_1__ nfs41_abs_path ;
typedef int USHORT ;


 int ERROR_BUFFER_OVERFLOW ;
 int NFS41_MAX_PATH_LEN ;
 int safe_read (unsigned char**,int *,int*,int) ;

__attribute__((used)) static int parse_abs_path(unsigned char **buffer, uint32_t *length, nfs41_abs_path *path)
{
    int status = safe_read(buffer, length, &path->len, sizeof(USHORT));
    if (status) goto out;
    if (path->len == 0)
        goto out;
    if (path->len >= NFS41_MAX_PATH_LEN) {
        status = ERROR_BUFFER_OVERFLOW;
        goto out;
    }
    status = safe_read(buffer, length, path->path, path->len);
    if (status) goto out;
    path->len--;
out:
    return status;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int kbuf; int single; int restart; int initial; int filter; int buf_len; int query_class; int state; int root; } ;
typedef TYPE_2__ readdir_upcall_args ;
struct TYPE_5__ {TYPE_2__ readdir; } ;
struct TYPE_7__ {int state_ref; int root_ref; TYPE_1__ args; } ;
typedef TYPE_3__ nfs41_upcall ;


 int dprintf (int,char*,int ,int ,int ,int ,int ,int ,int ) ;
 int get_name (unsigned char**,int *,int *) ;
 int safe_read (unsigned char**,int *,int *,int) ;

__attribute__((used)) static int parse_readdir(unsigned char *buffer, uint32_t length, nfs41_upcall *upcall)
{
    int status;
    readdir_upcall_args *args = &upcall->args.readdir;

    status = safe_read(&buffer, &length, &args->query_class, sizeof(args->query_class));
    if (status) goto out;
    status = safe_read(&buffer, &length, &args->buf_len, sizeof(args->buf_len));
    if (status) goto out;
    status = get_name(&buffer, &length, &args->filter);
    if (status) goto out;
    status = safe_read(&buffer, &length, &args->initial, sizeof(args->initial));
    if (status) goto out;
    status = safe_read(&buffer, &length, &args->restart, sizeof(args->restart));
    if (status) goto out;
    status = safe_read(&buffer, &length, &args->single, sizeof(args->single));
    if (status) goto out;
    status = safe_read(&buffer, &length, &args->kbuf, sizeof(args->kbuf));
    if (status) goto out;
    args->root = upcall->root_ref;
    args->state = upcall->state_ref;

    dprintf(1, "parsing NFS41_DIR_QUERY: info_class=%d buf_len=%d "
        "filter='%s'\n\tInitial\\Restart\\Single %d\\%d\\%d buf=%p\n",
        args->query_class, args->buf_len, args->filter,
        args->initial, args->restart, args->single, args->kbuf);
out:
    return status;
}

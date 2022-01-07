
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_11__ {int buf_len; int query_class; } ;
struct TYPE_9__ {TYPE_5__ getattr; } ;
struct TYPE_10__ {TYPE_2__* state_ref; TYPE_3__ args; } ;
typedef TYPE_4__ nfs41_upcall ;
typedef TYPE_5__ getattr_upcall_args ;
struct TYPE_7__ {int path; int len; } ;
struct TYPE_8__ {TYPE_1__ path; } ;


 int dprintf (int,char*,int ,int ,int ,int ) ;
 int safe_read (unsigned char**,int *,int *,int) ;

__attribute__((used)) static int parse_getattr(unsigned char *buffer, uint32_t length, nfs41_upcall *upcall)
{
    int status;
    getattr_upcall_args *args = &upcall->args.getattr;

    status = safe_read(&buffer, &length, &args->query_class, sizeof(args->query_class));
    if (status) goto out;
    status = safe_read(&buffer, &length, &args->buf_len, sizeof(args->buf_len));
    if (status) goto out;

    dprintf(1, "parsing NFS41_FILE_QUERY: info_class=%d buf_len=%d file=%.*s\n",
        args->query_class, args->buf_len, upcall->state_ref->path.len,
        upcall->state_ref->path.path);
out:
    return status;
}

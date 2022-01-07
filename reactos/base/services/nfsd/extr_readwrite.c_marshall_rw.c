
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int ctime; int out_len; } ;
typedef TYPE_2__ readwrite_upcall_args ;
struct TYPE_5__ {TYPE_2__ rw; } ;
struct TYPE_7__ {TYPE_1__ args; } ;
typedef TYPE_3__ nfs41_upcall ;


 int safe_write (unsigned char**,int *,int *,int) ;

__attribute__((used)) static int marshall_rw(unsigned char *buffer, uint32_t *length, nfs41_upcall *upcall)
{
    readwrite_upcall_args *args = &upcall->args.rw;
    int status;
    status = safe_write(&buffer, length, &args->out_len, sizeof(args->out_len));
    if (status) goto out;
    status = safe_write(&buffer, length, &args->ctime, sizeof(args->ctime));
out:
    return status;
}

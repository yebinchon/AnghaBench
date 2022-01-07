
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int buffer; int offset; int len; } ;
typedef TYPE_2__ readwrite_upcall_args ;
struct TYPE_5__ {TYPE_2__ rw; } ;
struct TYPE_7__ {int opcode; TYPE_1__ args; } ;
typedef TYPE_3__ nfs41_upcall ;


 int dprintf (int,char*,int ,int ,int ,int ) ;
 int opcode2string (int ) ;
 int safe_read (unsigned char**,int *,int *,int) ;

__attribute__((used)) static int parse_rw(unsigned char *buffer, uint32_t length, nfs41_upcall *upcall)
{
    int status;
    readwrite_upcall_args *args = &upcall->args.rw;

    status = safe_read(&buffer, &length, &args->len, sizeof(args->len));
    if (status) goto out;
    status = safe_read(&buffer, &length, &args->offset, sizeof(args->offset));
    if (status) goto out;
    status = safe_read(&buffer, &length, &args->buffer, sizeof(args->buffer));
    if (status) goto out;

    dprintf(1, "parsing %s len=%lu offset=%llu buf=%p\n",
            opcode2string(upcall->opcode), args->len, args->offset, args->buffer);
out:
    return status;
}

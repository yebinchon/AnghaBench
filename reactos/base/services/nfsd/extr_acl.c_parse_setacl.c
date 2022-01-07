
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int query; scalar_t__ sec_desc; } ;
typedef TYPE_2__ setacl_upcall_args ;
struct TYPE_5__ {TYPE_2__ setacl; } ;
struct TYPE_7__ {TYPE_1__ args; } ;
typedef TYPE_3__ nfs41_upcall ;
typedef int ULONG ;
typedef scalar_t__ PSECURITY_DESCRIPTOR ;


 int dprintf (int,char*,int ,int ) ;
 int safe_read (unsigned char**,int *,int *,int) ;

__attribute__((used)) static int parse_setacl(unsigned char *buffer, uint32_t length,
                        nfs41_upcall *upcall)
{
    int status;
    setacl_upcall_args *args = &upcall->args.setacl;
    ULONG sec_desc_len;

    status = safe_read(&buffer, &length, &args->query, sizeof(args->query));
    if (status) goto out;
    status = safe_read(&buffer, &length, &sec_desc_len, sizeof(ULONG));
    if (status) goto out;
    args->sec_desc = (PSECURITY_DESCRIPTOR)buffer;

    dprintf(1, "parsing NFS41_ACL_SET: info_class=%d sec_desc_len=%d\n",
            args->query, sec_desc_len);
out:
    return status;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int count; TYPE_6__* aces; scalar_t__ flag; } ;
typedef TYPE_1__ nfsacl41 ;
typedef int nfsace4 ;
struct TYPE_12__ {int who; int acemask; scalar_t__ aceflag; void* acetype; } ;
struct TYPE_11__ {int AceType; int AceFlags; int AceSize; } ;
struct TYPE_10__ {int AceCount; int AclSize; } ;
typedef int PSID ;
typedef scalar_t__ PBYTE ;
typedef TYPE_2__* PACL ;
typedef TYPE_3__* PACE_HEADER ;
typedef int * PACCESS_MASK ;
typedef int ACE_HEADER ;
typedef int ACCESS_MASK ;


 int ACCESS_ALLOWED_ACE_TYPE ;
 int ACCESS_DENIED_ACE_TYPE ;
 void* ACE4_ACCESS_ALLOWED_ACE_TYPE ;
 void* ACE4_ACCESS_DENIED_ACE_TYPE ;
 int ACE4_ALL_DIR ;
 int ACE4_ALL_FILE ;
 int ACE4_EVERYONE ;
 int ACLLVL ;
 int ERROR_NOT_SUPPORTED ;
 int ERROR_SUCCESS ;
 int GetAce (TYPE_2__*,int,TYPE_3__**) ;
 int GetLastError () ;
 int NF4DIR ;
 void* calloc (int,int) ;
 int dprintf (int ,char*,...) ;
 int eprintf (char*,int) ;
 int free (TYPE_6__*) ;
 int map_aceflags (int ,scalar_t__*) ;
 int map_acemask (int ,int,int *) ;
 int map_nfs4ace_who (scalar_t__,int ,int ,int ,char*) ;
 int memcpy (int ,int ,scalar_t__) ;
 int print_hexbuf_no_asci (int,unsigned char*,unsigned char*,int ) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int map_dacl_2_nfs4acl(PACL acl, PSID sid, PSID gsid, nfsacl41 *nfs4_acl,
                                int file_type, char *domain)
{
    int status;
    if (acl == ((void*)0)) {
        dprintf(ACLLVL, "this is a NULL dacl: all access to an object\n");
        nfs4_acl->count = 1;
        nfs4_acl->aces = calloc(1, sizeof(nfsace4));
        if (nfs4_acl->aces == ((void*)0)) {
            status = GetLastError();
            goto out;
        }
        nfs4_acl->flag = 0;
        memcpy(nfs4_acl->aces->who, ACE4_EVERYONE, strlen(ACE4_EVERYONE)+1);
        nfs4_acl->aces->acetype = ACE4_ACCESS_ALLOWED_ACE_TYPE;
        if (file_type == NF4DIR)
            nfs4_acl->aces->acemask = ACE4_ALL_DIR;
        else
            nfs4_acl->aces->acemask = ACE4_ALL_FILE;
        nfs4_acl->aces->aceflag = 0;
    } else {
        int i;
        PACE_HEADER ace;
        PBYTE tmp_pointer;

        dprintf(ACLLVL, "NON-NULL dacl with %d ACEs\n", acl->AceCount);
        print_hexbuf_no_asci(3, (unsigned char *)"ACL\n",
                            (unsigned char *)acl, acl->AclSize);
        nfs4_acl->count = acl->AceCount;
        nfs4_acl->aces = calloc(nfs4_acl->count, sizeof(nfsace4));
        if (nfs4_acl->aces == ((void*)0)) {
            status = GetLastError();
            goto out;
        }
        nfs4_acl->flag = 0;
        for (i = 0; i < acl->AceCount; i++) {
            status = GetAce(acl, i, &ace);
            if (!status) {
                status = GetLastError();
                eprintf("map_dacl_2_nfs4acl: GetAce failed with %d\n", status);
                goto out_free;
            }
            tmp_pointer = (PBYTE)ace;
            print_hexbuf_no_asci(3, (unsigned char *)"ACE\n",
                                    (unsigned char *)ace, ace->AceSize);
            dprintf(ACLLVL, "ACE TYPE: %x\n", ace->AceType);
            if (ace->AceType == ACCESS_ALLOWED_ACE_TYPE)
                nfs4_acl->aces[i].acetype = ACE4_ACCESS_ALLOWED_ACE_TYPE;
            else if (ace->AceType == ACCESS_DENIED_ACE_TYPE)
                nfs4_acl->aces[i].acetype = ACE4_ACCESS_DENIED_ACE_TYPE;
            else {
                eprintf("map_dacl_2_nfs4acl: unsupported ACE type %d\n",
                    ace->AceType);
                status = ERROR_NOT_SUPPORTED;
                goto out_free;
            }

            map_aceflags(ace->AceFlags, &nfs4_acl->aces[i].aceflag);
            map_acemask(*(PACCESS_MASK)(ace + 1), file_type,
                        &nfs4_acl->aces[i].acemask);

            tmp_pointer += sizeof(ACCESS_MASK) + sizeof(ACE_HEADER);
            status = map_nfs4ace_who(tmp_pointer, sid, gsid, nfs4_acl->aces[i].who,
                                     domain);
            if (status)
                goto out_free;
        }
    }
    status = ERROR_SUCCESS;
out:
    return status;
out_free:
    free(nfs4_acl->aces);
    goto out;
}

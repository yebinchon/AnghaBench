
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ACCESS_MASK ;


 int ACE4_ALL_DIR ;
 int ACE4_ALL_FILE ;
 int ACE4_GENERIC_EXECUTE ;
 int ACE4_GENERIC_READ ;
 int ACE4_GENERIC_WRITE ;
 int ACLLVL ;
 int GENERIC_ALL ;
 int GENERIC_EXECUTE ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int NF4DIR ;
 int dprintf (int ,char*,int) ;
 int print_nfs_access_mask (int ,int) ;
 int print_windows_access_mask (int ,int) ;

__attribute__((used)) static void map_acemask(ACCESS_MASK mask, int file_type, uint32_t *nfs4_mask)
{
    dprintf(ACLLVL, "ACE MASK: %x\n", mask);
    print_windows_access_mask(0, mask);

    if (mask & 0xf000000) {
        if (mask & GENERIC_ALL) {
            if (file_type == NF4DIR)
                *nfs4_mask |= ACE4_ALL_DIR;
            else
                *nfs4_mask |= ACE4_ALL_FILE;
        } else {
            if (mask & GENERIC_READ)
                *nfs4_mask |= ACE4_GENERIC_READ;
            if (mask & GENERIC_WRITE)
                *nfs4_mask |= ACE4_GENERIC_WRITE;
            if (mask & GENERIC_EXECUTE)
                *nfs4_mask |= ACE4_GENERIC_EXECUTE;
        }
    }
    else
        *nfs4_mask = mask & 0x00ffffff;
    print_nfs_access_mask(0, *nfs4_mask);
}

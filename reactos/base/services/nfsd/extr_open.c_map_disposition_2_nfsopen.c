
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
typedef scalar_t__ bool_t ;
typedef scalar_t__ ULONG ;


 int ERROR_FILE_EXISTS ;
 void* ERROR_FILE_NOT_FOUND ;
 void* EXCLUSIVE4_1 ;
 scalar_t__ FILE_CREATE ;
 scalar_t__ FILE_OPEN ;
 scalar_t__ FILE_OPEN_IF ;
 scalar_t__ FILE_OVERWRITE ;
 scalar_t__ FILE_OVERWRITE_IF ;
 scalar_t__ FILE_SUPERSEDE ;
 void* GUARDED4 ;
 int NFS4ERR_NOENT ;
 int NO_ERROR ;
 void* OPEN4_CREATE ;
 void* OPEN4_NOCREATE ;
 int dprintf (int,char*) ;

__attribute__((used)) static int map_disposition_2_nfsopen(ULONG disposition, int in_status, bool_t persistent,
                                     uint32_t *create, uint32_t *createhowmode,
                                     uint32_t *last_error)
{
    int status = NO_ERROR;
    if (disposition == FILE_SUPERSEDE) {
        if (in_status == NFS4ERR_NOENT)
            *last_error = ERROR_FILE_NOT_FOUND;

        *create = OPEN4_CREATE;
        if (persistent) *createhowmode = GUARDED4;
        else *createhowmode = EXCLUSIVE4_1;
    } else if (disposition == FILE_CREATE) {

        if (!in_status)
            status = ERROR_FILE_EXISTS;
        else {
            *create = OPEN4_CREATE;
            if (persistent) *createhowmode = GUARDED4;
            else *createhowmode = EXCLUSIVE4_1;
        }
    } else if (disposition == FILE_OPEN) {
        if (in_status == NFS4ERR_NOENT)
            status = ERROR_FILE_NOT_FOUND;
        else
            *create = OPEN4_NOCREATE;
    } else if (disposition == FILE_OPEN_IF) {
        if (in_status == NFS4ERR_NOENT) {
            dprintf(1, "creating new file\n");
            *create = OPEN4_CREATE;
            *last_error = ERROR_FILE_NOT_FOUND;
        } else {
            dprintf(1, "opening existing file\n");
            *create = OPEN4_NOCREATE;
        }
    } else if (disposition == FILE_OVERWRITE) {
        if (in_status == NFS4ERR_NOENT)
            status = ERROR_FILE_NOT_FOUND;

        *create = OPEN4_CREATE;
    } else if (disposition == FILE_OVERWRITE_IF) {
        if (in_status == NFS4ERR_NOENT)
            *last_error = ERROR_FILE_NOT_FOUND;

        *create = OPEN4_CREATE;
    }
    return status;
}

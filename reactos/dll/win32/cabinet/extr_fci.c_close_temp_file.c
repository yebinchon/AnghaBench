
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct temp_file {int handle; int name; } ;
struct TYPE_4__ {int (* close ) (int,int*,int ) ;int (* delete ) (int ,int*,int ) ;int pv; } ;
typedef TYPE_1__ FCI_Int ;
typedef int BOOL ;


 int FALSE ;
 int FCIERR_TEMP_FILE ;
 int TRUE ;
 int set_error (TYPE_1__*,int ,int) ;
 int stub1 (int,int*,int ) ;
 int stub2 (int ,int*,int ) ;

__attribute__((used)) static BOOL close_temp_file( FCI_Int *fci, struct temp_file *file )
{
    int err;

    if (file->handle == -1) return TRUE;
    if (fci->close( file->handle, &err, fci->pv ) == -1)
    {
        set_error( fci, FCIERR_TEMP_FILE, err );
        return FALSE;
    }
    file->handle = -1;
    if (fci->delete( file->name, &err, fci->pv ) == -1)
    {
        set_error( fci, FCIERR_TEMP_FILE, err );
        return FALSE;
    }
    return TRUE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct file {int size; int attribs; int time; int date; } ;
struct TYPE_7__ {int (* read ) (int,scalar_t__,scalar_t__,int*,int ) ;scalar_t__ data_in; scalar_t__ cdata_in; int pv; int (* close ) (int,int*,int ) ;} ;
typedef int PFNFCISTATUS ;
typedef int (* PFNFCIGETOPENINFO ) (char*,int *,int *,int *,int*,int ) ;
typedef int INT_PTR ;
typedef TYPE_1__ FCI_Int ;
typedef scalar_t__ BOOL ;


 scalar_t__ CAB_BLOCKMAX ;
 scalar_t__ FALSE ;
 int FCIERR_OPEN_SRC ;
 int FCIERR_READ_SRC ;
 scalar_t__ TRUE ;
 int _A_EXEC ;
 int add_data_block (TYPE_1__*,int ) ;
 struct file* add_file (TYPE_1__*,char*) ;
 int free_file (TYPE_1__*,struct file*) ;
 int set_error (TYPE_1__*,int ,int) ;
 int stub1 (int,scalar_t__,scalar_t__,int*,int ) ;
 int stub2 (int,int*,int ) ;

__attribute__((used)) static BOOL add_file_data( FCI_Int *fci, char *sourcefile, char *filename, BOOL execute,
                           PFNFCIGETOPENINFO get_open_info, PFNFCISTATUS status_callback )
{
    int err, len;
    INT_PTR handle;
    struct file *file;

    if (!(file = add_file( fci, filename ))) return FALSE;

    handle = get_open_info( sourcefile, &file->date, &file->time, &file->attribs, &err, fci->pv );
    if (handle == -1)
    {
        free_file( fci, file );
        set_error( fci, FCIERR_OPEN_SRC, err );
        return FALSE;
    }
    if (execute) file->attribs |= _A_EXEC;

    for (;;)
    {
        len = fci->read( handle, fci->data_in + fci->cdata_in,
                         CAB_BLOCKMAX - fci->cdata_in, &err, fci->pv );
        if (!len) break;

        if (len == -1)
        {
            set_error( fci, FCIERR_READ_SRC, err );
            return FALSE;
        }
        file->size += len;
        fci->cdata_in += len;
        if (fci->cdata_in == CAB_BLOCKMAX && !add_data_block( fci, status_callback )) return FALSE;
    }
    fci->close( handle, &err, fci->pv );
    return TRUE;
}

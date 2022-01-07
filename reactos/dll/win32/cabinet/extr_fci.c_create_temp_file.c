
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct temp_file {int handle; int name; } ;
struct TYPE_4__ {int (* open ) (int ,int,int,int*,int ) ;int pv; int (* gettemp ) (int ,int ,int ) ;} ;
typedef TYPE_1__ FCI_Int ;
typedef int BOOL ;


 int CB_MAX_FILENAME ;
 int ERROR_FUNCTION_FAILED ;
 int FALSE ;
 int FCIERR_TEMP_FILE ;
 int TRUE ;
 int _O_BINARY ;
 int _O_CREAT ;
 int _O_EXCL ;
 int _O_RDWR ;
 int _S_IREAD ;
 int _S_IWRITE ;
 int set_error (TYPE_1__*,int ,int) ;
 int stub1 (int ,int ,int ) ;
 int stub2 (int ,int,int,int*,int ) ;

__attribute__((used)) static BOOL create_temp_file( FCI_Int *fci, struct temp_file *file )
{
    int err;

    if (!fci->gettemp( file->name, CB_MAX_FILENAME, fci->pv ))
    {
        set_error( fci, FCIERR_TEMP_FILE, ERROR_FUNCTION_FAILED );
        return FALSE;
    }
    if ((file->handle = fci->open( file->name, _O_RDWR | _O_CREAT | _O_EXCL | _O_BINARY,
                                   _S_IREAD | _S_IWRITE, &err, fci->pv )) == -1)
    {
        set_error( fci, FCIERR_TEMP_FILE, err );
        return FALSE;
    }
    return TRUE;
}

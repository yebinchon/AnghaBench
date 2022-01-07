
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct resource_dir_entry {int children; void* id; } ;
struct resource_data {int entry; } ;
struct TYPE_4__ {int root; } ;
typedef TYPE_1__ QUEUEDUPDATES ;
typedef int LPCWSTR ;
typedef int LANGID ;
typedef int BOOL ;


 int FALSE ;
 int GetProcessHeap () ;
 struct resource_dir_entry* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,struct resource_data*) ;
 int TRACE (char*,TYPE_1__*,int ,int ,struct resource_data*,int ) ;
 int TRUE ;
 int add_resource_data_entry (int *,struct resource_data*) ;
 int add_resource_dir_entry (int *,struct resource_dir_entry*) ;
 int debugstr_w (int ) ;
 struct resource_data* find_resource_data (int *,int ) ;
 struct resource_dir_entry* find_resource_dir_entry (int *,int ) ;
 int list_init (int *) ;
 int list_remove (int *) ;
 void* res_strdupW (int ) ;

__attribute__((used)) static BOOL update_add_resource( QUEUEDUPDATES *updates, LPCWSTR Type, LPCWSTR Name,
                                 LANGID Lang, struct resource_data *resdata,
                                 BOOL overwrite_existing )
{
    struct resource_dir_entry *restype, *resname;
    struct resource_data *existing;

    TRACE("%p %s %s %p %d\n", updates,
          debugstr_w(Type), debugstr_w(Name), resdata, overwrite_existing );

    restype = find_resource_dir_entry( &updates->root, Type );
    if (!restype)
    {
        restype = HeapAlloc( GetProcessHeap(), 0, sizeof *restype );
        restype->id = res_strdupW( Type );
        list_init( &restype->children );
        add_resource_dir_entry( &updates->root, restype );
    }

    resname = find_resource_dir_entry( &restype->children, Name );
    if (!resname)
    {
        resname = HeapAlloc( GetProcessHeap(), 0, sizeof *resname );
        resname->id = res_strdupW( Name );
        list_init( &resname->children );
        add_resource_dir_entry( &restype->children, resname );
    }





    existing = find_resource_data( &resname->children, Lang );
    if (existing)
    {
        if (!overwrite_existing)
            return FALSE;
        list_remove( &existing->entry );
        HeapFree( GetProcessHeap(), 0, existing );
    }

    if (resdata)
        add_resource_data_entry( &resname->children, resdata );

    return TRUE;
}

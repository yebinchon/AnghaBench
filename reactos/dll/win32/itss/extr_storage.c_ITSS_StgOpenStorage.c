
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmFile {int dummy; } ;
typedef char WCHAR ;
typedef int SNB ;
typedef int IStorage ;
typedef int HRESULT ;
typedef int DWORD ;


 int E_FAIL ;
 int ITSS_create_chm_storage (struct chmFile*,char const*,int **) ;
 int TRACE (char*,int ) ;
 struct chmFile* chm_openW (char const*) ;
 int debugstr_w (char const*) ;

HRESULT ITSS_StgOpenStorage(
    const WCHAR* pwcsName,
    IStorage* pstgPriority,
    DWORD grfMode,
    SNB snbExclude,
    DWORD reserved,
    IStorage** ppstgOpen)
{
    struct chmFile *chmfile;
    static const WCHAR szRoot[] = { '/', 0 };

    TRACE("%s\n", debugstr_w(pwcsName) );

    chmfile = chm_openW( pwcsName );
    if( !chmfile )
        return E_FAIL;

    return ITSS_create_chm_storage( chmfile, szRoot, ppstgOpen );
}

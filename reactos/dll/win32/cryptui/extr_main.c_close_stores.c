
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 int CertCloseStore (int ,int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TCM_GETITEMCOUNT ;
 int cert_mgr_index_to_store (int ,int) ;

__attribute__((used)) static void close_stores(HWND tab)
{
    int i, tabs = SendMessageW(tab, TCM_GETITEMCOUNT, 0, 0);

    for (i = 0; i < tabs; i++)
        CertCloseStore(cert_mgr_index_to_store(tab, i), 0);
}

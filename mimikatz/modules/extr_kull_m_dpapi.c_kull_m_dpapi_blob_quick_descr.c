
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PKULL_M_DPAPI_BLOB ;
typedef int LPCVOID ;
typedef int DWORD ;


 int kull_m_dpapi_blob_create (int ) ;
 int kull_m_dpapi_blob_delete (int ) ;
 int kull_m_dpapi_blob_descr (int ,int ) ;

void kull_m_dpapi_blob_quick_descr(DWORD level, LPCVOID data )
{
 PKULL_M_DPAPI_BLOB blob;
 if(blob = kull_m_dpapi_blob_create(data))
 {
  kull_m_dpapi_blob_descr(level, blob);
  kull_m_dpapi_blob_delete(blob);
 }
}

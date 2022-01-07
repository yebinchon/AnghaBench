
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IWSCProductList ;
typedef int IID ;
typedef int HRESULT ;
typedef int HMODULE ;
typedef int CLSID ;


 int CLSCTX_INPROC_SERVER ;
 int CoCreateInstance (int const*,int *,int ,int const*,int **) ;
 int FAILED (int ) ;
 int FreeLibrary (int ) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 int LOG_INFO ;
 int LoadLibraryW (char*) ;
 int WSC_SECURITY_PROVIDER_ANTISPYWARE ;
 int WSC_SECURITY_PROVIDER_ANTIVIRUS ;
 int WSC_SECURITY_PROVIDER_FIREWALL ;
 int blog (int ,char*) ;
 int log_security_products_by_type (int *,int ) ;

__attribute__((used)) static void log_security_products(void)
{
 IWSCProductList *prod_list = ((void*)0);
 HMODULE h_wsc;
 HRESULT hr;




 h_wsc = LoadLibraryW(L"wscapi.dll");
 if (!h_wsc)
  return;

 const CLSID *prod_list_clsid =
  (const CLSID *)GetProcAddress(h_wsc, "CLSID_WSCProductList");
 const IID *prod_list_iid =
  (const IID *)GetProcAddress(h_wsc, "IID_IWSCProductList");

 if (prod_list_clsid && prod_list_iid) {
  blog(LOG_INFO, "Sec. Software Status:");

  hr = CoCreateInstance(prod_list_clsid, ((void*)0),
          CLSCTX_INPROC_SERVER, prod_list_iid,
          &prod_list);
  if (!FAILED(hr)) {
   log_security_products_by_type(
    prod_list, WSC_SECURITY_PROVIDER_ANTIVIRUS);
  }

  hr = CoCreateInstance(prod_list_clsid, ((void*)0),
          CLSCTX_INPROC_SERVER, prod_list_iid,
          &prod_list);
  if (!FAILED(hr)) {
   log_security_products_by_type(
    prod_list, WSC_SECURITY_PROVIDER_FIREWALL);
  }

  hr = CoCreateInstance(prod_list_clsid, ((void*)0),
          CLSCTX_INPROC_SERVER, prod_list_iid,
          &prod_list);
  if (!FAILED(hr)) {
   log_security_products_by_type(
    prod_list, WSC_SECURITY_PROVIDER_ANTISPYWARE);
  }
 }

 FreeLibrary(h_wsc);
}

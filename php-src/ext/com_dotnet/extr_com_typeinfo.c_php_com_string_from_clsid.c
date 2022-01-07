
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPOLESTR ;
typedef int CLSID ;


 int LocalFree (int ) ;
 int StringFromCLSID (int const*,int *) ;
 char* php_com_olestring_to_string (int ,int *,int) ;

__attribute__((used)) static char *php_com_string_from_clsid(const CLSID *clsid, int codepage)
{
 LPOLESTR ole_clsid;
 char *clsid_str;

 StringFromCLSID(clsid, &ole_clsid);
 clsid_str = php_com_olestring_to_string(ole_clsid, ((void*)0), codepage);
 LocalFree(ole_clsid);

 return clsid_str;
}

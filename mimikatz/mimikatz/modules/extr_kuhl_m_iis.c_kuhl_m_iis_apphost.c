
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int PCWSTR ;
typedef int NTSTATUS ;
typedef int IXMLDOMDocument ;


 int IISXMLType_ApplicationPools ;
 int IISXMLType_Sites ;
 int PRINT_ERROR (char*) ;
 int STATUS_SUCCESS ;
 int kuhl_m_iis_apphost_genericEnumNodes (int,int **,int *,char*,int ,int *,int *,int ) ;
 scalar_t__ kull_m_string_args_byName (int,int **,char*,int *,int *) ;
 int * kull_m_xml_CreateAndInitDOM () ;
 scalar_t__ kull_m_xml_LoadXMLFile (int *,int ) ;
 int kull_m_xml_ReleaseDom (int *) ;

NTSTATUS kuhl_m_iis_apphost(int argc, wchar_t * argv[])
{
 PCWSTR filename;
 IXMLDOMDocument *pXMLDom;

 if(kull_m_string_args_byName(argc, argv, L"in", &filename, ((void*)0)))
 {
  if(pXMLDom = kull_m_xml_CreateAndInitDOM())
  {
   if(kull_m_xml_LoadXMLFile(pXMLDom, filename))
   {
    kuhl_m_iis_apphost_genericEnumNodes(argc, argv, pXMLDom, L"//configuration/system.applicationHost/applicationPools/add", IISXMLType_ApplicationPools, ((void*)0), ((void*)0), 0);
    kuhl_m_iis_apphost_genericEnumNodes(argc, argv, pXMLDom, L"//configuration/system.applicationHost/sites/site", IISXMLType_Sites, ((void*)0), ((void*)0), 0);
   }
   kull_m_xml_ReleaseDom(pXMLDom);
  }
 }
 else PRINT_ERROR(L"Missing /in:filename (applicationHost.config)\n");
 return STATUS_SUCCESS;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int PWSTR ;
typedef int IXMLDOMNode ;
typedef int IXMLDOMDocument ;


 scalar_t__ IXMLDOMNode_selectSingleNode (int *,char*,int **) ;
 int LocalFree (int ) ;
 scalar_t__ S_OK ;
 int kprintf (char*,int ) ;
 int kuhl_m_iis_maybeEncrypted (int,int **,int *,int ) ;
 int kull_m_xml_getAttribute (int *,char*) ;

void kuhl_m_iis_apphost_apppool(int argc, wchar_t * argv[], IXMLDOMDocument *pXMLDom, IXMLDOMNode *pNode)
{
 PWSTR gen;
 IXMLDOMNode *pProcessModelNode;
 if(gen = kull_m_xml_getAttribute(pNode, L"name"))
 {
  kprintf(L"\n* ApplicationPool: \'%s\'\n", gen);
  LocalFree(gen);
  if((IXMLDOMNode_selectSingleNode(pNode, L"processModel", &pProcessModelNode) == S_OK) && pProcessModelNode)
  {
   if(gen = kull_m_xml_getAttribute(pProcessModelNode, L"userName"))
   {
    kprintf(L"  Username: %s\n", gen);
    LocalFree(gen);
    if(gen = kull_m_xml_getAttribute(pProcessModelNode, L"password"))
    {
     kprintf(L"  Password: %s\n", gen);
     kuhl_m_iis_maybeEncrypted(argc, argv, pXMLDom, gen);
     LocalFree(gen);
    }
   }
  }
 }
}

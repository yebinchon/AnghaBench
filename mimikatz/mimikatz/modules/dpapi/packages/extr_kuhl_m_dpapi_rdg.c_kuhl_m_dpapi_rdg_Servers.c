
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int IXMLDOMNodeList ;
typedef int IXMLDOMNode ;
typedef int DWORD ;
typedef int DOMNodeType ;


 scalar_t__ IXMLDOMNodeList_get_item (int *,long,int **) ;
 scalar_t__ IXMLDOMNodeList_get_length (int *,long*) ;
 int IXMLDOMNode_Release (int *) ;
 scalar_t__ IXMLDOMNode_get_nodeType (int *,int *) ;
 scalar_t__ IXMLDOMNode_selectNodes (int *,char*,int **) ;
 scalar_t__ IXMLDOMNode_selectSingleNode (int *,char*,int **) ;
 int LocalFree (int *) ;
 int NODE_ELEMENT ;
 scalar_t__ S_OK ;
 int kprintf (char*,int,char*,int *) ;
 int kuhl_m_dpapi_rdg_LogonCredentials (int,int *,int,int **) ;
 int * kull_m_xml_getTextValue (int *,char*) ;

void kuhl_m_dpapi_rdg_Servers(DWORD level, IXMLDOMNode *pNode, int argc, wchar_t * argv[])
{
 IXMLDOMNodeList *pServers;
 IXMLDOMNode *pServer, *pProperties;
 DOMNodeType type;
 long lengthServers, i;
 wchar_t *name;

 if((IXMLDOMNode_selectNodes(pNode, L"server", &pServers) == S_OK) && pServers)
 {
  if(IXMLDOMNodeList_get_length(pServers, &lengthServers) == S_OK)
  {
   for(i = 0; i < lengthServers; i++)
   {
    if((IXMLDOMNodeList_get_item(pServers, i, &pServer) == S_OK) && pServer)
    {
     if((IXMLDOMNode_get_nodeType(pServer, &type) == S_OK) && (type == NODE_ELEMENT))
     {
      if((IXMLDOMNode_selectSingleNode(pServer, L"properties", &pProperties) == S_OK) && pProperties)
      {
       if(name = kull_m_xml_getTextValue(pProperties, L"name"))
       {
        kprintf(L"%*s" L"| %s\n", level << 1, L"", name);
        LocalFree(name);
       }
      }
      kuhl_m_dpapi_rdg_LogonCredentials(level + 1, pServer, argc, argv);
     }
     IXMLDOMNode_Release(pServer);
    }
   }
  }
 }
}

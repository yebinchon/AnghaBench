
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ PCWSTR ;
typedef int LPCWSTR ;
typedef int LPCBYTE ;
typedef int IXMLDOMNodeList ;
typedef int IXMLDOMNode ;
typedef int IXMLDOMDocument ;
typedef int IISXMLType ;
typedef int DWORD ;
typedef int DOMNodeType ;
typedef int BSTR ;
typedef int BOOL ;


 int FALSE ;



 scalar_t__ IXMLDOMDocument_selectNodes (int *,int ,int **) ;
 scalar_t__ IXMLDOMNodeList_get_item (int *,long,int **) ;
 scalar_t__ IXMLDOMNodeList_get_length (int *,long*) ;
 int IXMLDOMNode_Release (int *) ;
 scalar_t__ IXMLDOMNode_get_nodeType (int *,int *) ;
 int NODE_ELEMENT ;
 scalar_t__ S_OK ;
 int kuhl_m_iis_apphost_apppool (int,int **,int *,int *) ;
 int kuhl_m_iis_apphost_provider (int,int **,int *,int *,int ,int ,int ) ;
 int kuhl_m_iis_apphost_site (int,int **,int *,int *) ;

void kuhl_m_iis_apphost_genericEnumNodes(int argc, wchar_t * argv[], IXMLDOMDocument *pXMLDom, PCWSTR path, IISXMLType xmltype, LPCWSTR provider, LPCBYTE data, DWORD szData)
{
 IXMLDOMNodeList *pNodes;
 IXMLDOMNode *pNode;
 DOMNodeType type;
 BOOL mustBreak = FALSE;
 long length, i;

 if((IXMLDOMDocument_selectNodes(pXMLDom, (BSTR) path, &pNodes) == S_OK) && pNodes)
 {
  if(IXMLDOMNodeList_get_length(pNodes, &length) == S_OK)
  {
   for(i = 0; (i < length) && !mustBreak; i++)
   {
    if((IXMLDOMNodeList_get_item(pNodes, i, &pNode) == S_OK) && pNode)
    {
     if((IXMLDOMNode_get_nodeType(pNode, &type) == S_OK) && (type == NODE_ELEMENT))
     {
      switch(xmltype)
      {
      case 130:
       kuhl_m_iis_apphost_apppool(argc, argv, pXMLDom, pNode);
       break;
      case 128:
       kuhl_m_iis_apphost_site(argc, argv, pXMLDom, pNode);
       break;
      case 129:
       mustBreak = kuhl_m_iis_apphost_provider(argc, argv, pXMLDom, pNode, provider, data, szData);
       break;
      }
     }
     IXMLDOMNode_Release(pNode);
    }
   }
  }
 }
}

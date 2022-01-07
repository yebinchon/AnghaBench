
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int IXMLDOMNodeList ;
typedef int IXMLDOMNode ;
typedef int DOMNodeType ;
typedef int BSTR ;


 scalar_t__ IXMLDOMDocument_selectSingleNode (int *,int ,int **) ;
 int IXMLDOMNodeList_Release (int *) ;
 scalar_t__ IXMLDOMNodeList_get_item (int *,long,int **) ;
 scalar_t__ IXMLDOMNodeList_get_length (int *,long*) ;
 int IXMLDOMNode_Release (int *) ;
 scalar_t__ IXMLDOMNode_get_childNodes (int *,int **) ;
 scalar_t__ IXMLDOMNode_get_nodeType (int *,int *) ;
 int LocalFree (int *) ;
 int NODE_ELEMENT ;
 int PRINT_ERROR (char*) ;
 scalar_t__ S_OK ;
 int kprintf (char*,int *) ;
 int kuhl_m_dpapi_powershell_try_SecureString (int *,int,int **) ;
 int * kull_m_xml_getAttribute (int *,char*) ;

void kuhl_m_dpapi_powershell_credential(IXMLDOMNode *pObj, int argc, wchar_t * argv[])
{
 IXMLDOMNode *pNode, *pChild;
 IXMLDOMNodeList *pChilds;
 long listLength, i;
 DOMNodeType type;
 wchar_t *name;

 if((IXMLDOMDocument_selectSingleNode(pObj, (BSTR) L"Props", &pNode) == S_OK) && pNode)
 {
  if(IXMLDOMNode_get_childNodes(pNode, &pChilds) == S_OK)
  {
   if(IXMLDOMNodeList_get_length(pChilds, &listLength) == S_OK)
   {
    for(i = 0; i < listLength; i++)
    {
     if((IXMLDOMNodeList_get_item(pChilds, i, &pChild) == S_OK) && pChild)
     {
      if((IXMLDOMNode_get_nodeType(pChild, &type) == S_OK) && (type == NODE_ELEMENT))
      {
       if(name = kull_m_xml_getAttribute(pChild, L"N"))
       {
        kprintf(L"%s: ", name);
        LocalFree(name);
        kuhl_m_dpapi_powershell_try_SecureString(pChild, argc, argv);
       }
       else PRINT_ERROR(L"No NAME\n");
      }
      else PRINT_ERROR(L"Not ELEMENT\n");
      IXMLDOMNode_Release(pChild);
     }
    }
   }
   IXMLDOMNodeList_Release(pChilds);
  }
 }
 else PRINT_ERROR(L"No Props\n");
}

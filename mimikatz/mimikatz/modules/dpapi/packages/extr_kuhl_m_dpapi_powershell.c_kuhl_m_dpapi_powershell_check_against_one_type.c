
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef int IXMLDOMNodeList ;
typedef int IXMLDOMNode ;
typedef int DOMNodeType ;
typedef int BSTR ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ IXMLDOMDocument_selectSingleNode (int *,int ,int **) ;
 scalar_t__ IXMLDOMNodeList_get_item (int *,long,int **) ;
 scalar_t__ IXMLDOMNodeList_get_length (int *,long*) ;
 int IXMLDOMNode_Release (int *) ;
 scalar_t__ IXMLDOMNode_get_nodeType (int *,int *) ;
 scalar_t__ IXMLDOMNode_get_text (int *,int *) ;
 scalar_t__ IXMLDOMNode_selectNodes (int *,char*,int **) ;
 int NODE_ELEMENT ;
 int PRINT_ERROR (char*) ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int _wcsicmp (int ,int ) ;

BOOL kuhl_m_dpapi_powershell_check_against_one_type(IXMLDOMNode *pObj, LPCWSTR TypeName)
{
 BOOL status = FALSE;
 IXMLDOMNode *pNode, *pT;
 IXMLDOMNodeList *pTs;
 DOMNodeType type;
 long lengthT, i;
 BSTR bstrGeneric;

 if((IXMLDOMDocument_selectSingleNode(pObj, (BSTR) L"TN", &pNode) == S_OK) && pNode)
 {
  if((IXMLDOMNode_selectNodes(pNode, L"T", &pTs) == S_OK) && pTs)
  {
   if(IXMLDOMNodeList_get_length(pTs, &lengthT) == S_OK)
   {
    for(i = 0; (i < lengthT) && !status; i++)
    {
     if((IXMLDOMNodeList_get_item(pTs, i, &pT) == S_OK) && pT)
     {
      if((IXMLDOMNode_get_nodeType(pT, &type) == S_OK) && (type == NODE_ELEMENT))
      {
       if(IXMLDOMNode_get_text(pT, &bstrGeneric) == S_OK)
       {
        status = !_wcsicmp(bstrGeneric, TypeName);
        SysFreeString(bstrGeneric);
       }
      }
      IXMLDOMNode_Release(pT);
     }
    }
   }
  }
  else PRINT_ERROR(L"No types\n");
 }
 else PRINT_ERROR(L"No TN\n");
 return status;
}

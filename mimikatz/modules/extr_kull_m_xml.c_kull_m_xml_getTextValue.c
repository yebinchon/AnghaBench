
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ PCWSTR ;
typedef int IXMLDOMNode ;
typedef int BSTR ;


 scalar_t__ IXMLDOMNode_get_firstChild (int *,int **) ;
 scalar_t__ IXMLDOMNode_get_text (int *,int *) ;
 scalar_t__ IXMLDOMNode_selectSingleNode (int *,int ,int **) ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int kull_m_string_copy (int **,int ) ;

wchar_t * kull_m_xml_getTextValue(IXMLDOMNode *pNode, PCWSTR name)
{
 wchar_t *result = ((void*)0);
 IXMLDOMNode *pSingleNode, *pChild;
 BSTR bstrGeneric;

 if((IXMLDOMNode_selectSingleNode(pNode, (BSTR) name, &pSingleNode) == S_OK) && pSingleNode)
 {
  if((IXMLDOMNode_get_firstChild(pSingleNode, &pChild) == S_OK) && pChild)
  {
   if(IXMLDOMNode_get_text(pChild, &bstrGeneric) == S_OK)
   {
    kull_m_string_copy(&result, bstrGeneric);
    SysFreeString(bstrGeneric);
   }
  }
 }
 return result;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int PCWSTR ;
typedef int IXMLDOMNode ;
typedef int IXMLDOMNamedNodeMap ;
typedef int BSTR ;
typedef int BOOL ;


 int FALSE ;
 int IXMLDOMNamedNodeMap_Release (int *) ;
 scalar_t__ IXMLDOMNamedNodeMap_get_item (int *,long,int **) ;
 scalar_t__ IXMLDOMNamedNodeMap_get_length (int *,long*) ;
 int IXMLDOMNode_Release (int *) ;
 scalar_t__ IXMLDOMNode_get_attributes (int *,int **) ;
 scalar_t__ IXMLDOMNode_get_nodeName (int *,int *) ;
 scalar_t__ IXMLDOMNode_get_text (int *,int *) ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 scalar_t__ _wcsicmp (int ,int ) ;
 int kull_m_string_copy (int **,int ) ;

wchar_t * kull_m_xml_getAttribute(IXMLDOMNode *pNode, PCWSTR name)
{
 wchar_t *result = ((void*)0);
 IXMLDOMNamedNodeMap *map;
 IXMLDOMNode *nAttr;
 BSTR bstrGeneric;
 long length, i;
 BOOL isMatch = FALSE;

 if(IXMLDOMNode_get_attributes(pNode, &map) == S_OK)
 {
  if(IXMLDOMNamedNodeMap_get_length(map, &length) == S_OK)
  {
   for(i = 0; (i < length) && !isMatch; i++)
   {
    if(IXMLDOMNamedNodeMap_get_item(map, i, &nAttr) == S_OK)
    {
     if(IXMLDOMNode_get_nodeName(nAttr, &bstrGeneric) == S_OK)
     {
      isMatch = (_wcsicmp(name, bstrGeneric) == 0);
      SysFreeString(bstrGeneric);
      if(isMatch)
      {
       if(IXMLDOMNode_get_text(nAttr, &bstrGeneric) == S_OK)
       {
        kull_m_string_copy(&result, bstrGeneric);
        SysFreeString(bstrGeneric);
       }
      }
     }
     IXMLDOMNode_Release(nAttr);
    }
   }
  }
  IXMLDOMNamedNodeMap_Release(map);
 }
 return result;
}

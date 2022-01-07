
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IXMLDOMDocument ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_DOMDocument ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 int IID_IXMLDOMDocument ;
 int IXMLDOMDocument_put_async (int *,int ) ;
 int IXMLDOMDocument_put_preserveWhiteSpace (int *,int ) ;
 int IXMLDOMDocument_put_resolveExternals (int *,int ) ;
 int IXMLDOMDocument_put_validateOnParse (int *,int ) ;
 int PRINT_ERROR (char*,scalar_t__) ;
 scalar_t__ S_OK ;
 int VARIANT_FALSE ;

IXMLDOMDocument * kull_m_xml_CreateAndInitDOM()
{
 IXMLDOMDocument *pDoc = ((void*)0);
 HRESULT hr = CoCreateInstance(&CLSID_DOMDocument, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IXMLDOMDocument, (void **) &pDoc);
 if(hr == S_OK)
 {
  IXMLDOMDocument_put_async(pDoc, VARIANT_FALSE);
  IXMLDOMDocument_put_validateOnParse(pDoc, VARIANT_FALSE);
  IXMLDOMDocument_put_resolveExternals(pDoc, VARIANT_FALSE);
  IXMLDOMDocument_put_preserveWhiteSpace(pDoc, VARIANT_FALSE);
 }
 else PRINT_ERROR(L"CoCreateInstance: 0x%08x\n", hr);
 return pDoc;
}

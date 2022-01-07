
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IXMLDOMDocument ;


 int IXMLDOMDocument_Release (int *) ;

void kull_m_xml_ReleaseDom(IXMLDOMDocument *pDoc)
{
 if(pDoc)
  IXMLDOMDocument_Release(pDoc);
}

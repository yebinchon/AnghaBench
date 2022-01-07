
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int PWSTR ;
typedef int IXMLDOMNodeList ;
typedef int IXMLDOMNode ;
typedef int IXMLDOMDocument ;
typedef int DOMNodeType ;


 scalar_t__ IXMLDOMNodeList_get_item (int *,long,int **) ;
 scalar_t__ IXMLDOMNodeList_get_length (int *,long*) ;
 int IXMLDOMNode_Release (int *) ;
 scalar_t__ IXMLDOMNode_get_nodeType (int *,int *) ;
 scalar_t__ IXMLDOMNode_selectNodes (int *,char*,int **) ;
 int LocalFree (int ) ;
 int NODE_ELEMENT ;
 scalar_t__ S_OK ;
 int kprintf (char*,...) ;
 int kuhl_m_iis_maybeEncrypted (int,int **,int *,int ) ;
 int kull_m_xml_getAttribute (int *,char*) ;

void kuhl_m_iis_apphost_site(int argc, wchar_t * argv[], IXMLDOMDocument *pXMLDom, IXMLDOMNode *pNode)
{
 PWSTR gen;
 IXMLDOMNodeList *pAppNodes, *pVdirNodes;
 IXMLDOMNode *pAppNode, *pVdirNode;
 DOMNodeType type;
 long lengthApp, lengthVdir, i, j;

 if(gen = kull_m_xml_getAttribute(pNode, L"name"))
 {
  kprintf(L"\n* Site: \'%s\'\n", gen);
  LocalFree(gen);
  if((IXMLDOMNode_selectNodes(pNode, L"application", &pAppNodes) == S_OK) && pAppNodes)
  {
   if(IXMLDOMNodeList_get_length(pAppNodes, &lengthApp) == S_OK)
   {
    for(i = 0; i < lengthApp; i++)
    {
     if((IXMLDOMNodeList_get_item(pAppNodes, i, &pAppNode) == S_OK) && pAppNode)
     {
      if((IXMLDOMNode_get_nodeType(pAppNode, &type) == S_OK) && (type == NODE_ELEMENT))
      {
       if(gen = kull_m_xml_getAttribute(pAppNode, L"path"))
       {
        kprintf(L"  > Application Path: %s\n", gen);
        LocalFree(gen);

        if((IXMLDOMNode_selectNodes(pAppNode, L"virtualDirectory", &pVdirNodes) == S_OK) && pVdirNodes)
        {
         if(IXMLDOMNodeList_get_length(pVdirNodes, &lengthVdir) == S_OK)
         {
          for(j = 0; j < lengthVdir; j++)
          {
           if((IXMLDOMNodeList_get_item(pVdirNodes, j, &pVdirNode) == S_OK) && pVdirNode)
           {
            if((IXMLDOMNode_get_nodeType(pVdirNode, &type) == S_OK) && (type == NODE_ELEMENT))
            {
             if(gen = kull_m_xml_getAttribute(pVdirNode, L"path"))
             {
              kprintf(L"    - VirtualDirectory Path: %s ( ", gen);
              LocalFree(gen);

              if(gen = kull_m_xml_getAttribute(pVdirNode, L"physicalPath"))
              {
               kprintf(L"%s", gen);
               LocalFree(gen);
              }
              kprintf(L" )\n");

              if(gen = kull_m_xml_getAttribute(pVdirNode, L"userName"))
              {
               kprintf(L"      Username: %s\n", gen);
               LocalFree(gen);
               if(gen = kull_m_xml_getAttribute(pVdirNode, L"password"))
               {
                kprintf(L"      Password: %s\n", gen);
                kuhl_m_iis_maybeEncrypted(argc, argv, pXMLDom, gen);
                LocalFree(gen);
               }
              }
             }
            }
            IXMLDOMNode_Release(pVdirNode);
           }
          }
         }
        }
       }
      }
      IXMLDOMNode_Release(pAppNode);
     }
    }
   }
  }
 }
}

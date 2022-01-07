
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WebBrowser ;


 int TRUE ;
 int release_client_site (int *,int ) ;

void WebBrowser_OleObject_Destroy(WebBrowser *This)
{
    release_client_site(This, TRUE);
}

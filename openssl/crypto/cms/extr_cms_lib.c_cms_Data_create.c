
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int contentType; } ;
typedef TYPE_1__ CMS_ContentInfo ;


 TYPE_1__* CMS_ContentInfo_new () ;
 int CMS_set_detached (TYPE_1__*,int ) ;
 int NID_pkcs7_data ;
 int OBJ_nid2obj (int ) ;

CMS_ContentInfo *cms_Data_create(void)
{
    CMS_ContentInfo *cms;
    cms = CMS_ContentInfo_new();
    if (cms != ((void*)0)) {
        cms->contentType = OBJ_nid2obj(NID_pkcs7_data);

        CMS_set_detached(cms, 0);
    }
    return cms;
}

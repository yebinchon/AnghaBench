
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_4__ {scalar_t__ error_no; } ;
struct TYPE_5__ {TYPE_1__ error; int mmgr; int trailer; } ;
typedef scalar_t__ HPDF_STATUS ;
typedef int HPDF_MD5_CTX ;
typedef TYPE_2__* HPDF_Doc ;
typedef int HPDF_BYTE ;
typedef scalar_t__ HPDF_Array ;


 scalar_t__ HPDF_Array_Add (scalar_t__,int ) ;
 scalar_t__ HPDF_Array_New (int ) ;
 int HPDF_Binary_New (int ,int *,int) ;
 scalar_t__ HPDF_Dict_Add (int ,char*,scalar_t__) ;
 scalar_t__ HPDF_Dict_GetItem (int ,char*,int ) ;
 int HPDF_MD5Final (int *,int *) ;
 int HPDF_MD5Init (int *) ;
 int HPDF_MD5Update (int *,int *,int) ;
 int HPDF_MD5_KEY_LEN ;
 int HPDF_OCLASS_ARRAY ;
 scalar_t__ HPDF_OK ;
 int HPDF_StrLen (char const*,int) ;
 scalar_t__ ctime (int *) ;
 int time (int *) ;

HPDF_STATUS
HPDF_PDFA_GenerateID(HPDF_Doc pdf)
{
    HPDF_Array id;
    HPDF_BYTE *currentTime;
    HPDF_BYTE idkey[HPDF_MD5_KEY_LEN];
    HPDF_MD5_CTX md5_ctx;
    time_t ltime;

    ltime = time(((void*)0));
    currentTime = (HPDF_BYTE *)ctime(&ltime);

    id = HPDF_Dict_GetItem(pdf->trailer, "ID", HPDF_OCLASS_ARRAY);
    if (!id) {
       id = HPDF_Array_New(pdf->mmgr);

       if (!id || HPDF_Dict_Add(pdf->trailer, "ID", id) != HPDF_OK)
         return pdf->error.error_no;

       HPDF_MD5Init(&md5_ctx);
       HPDF_MD5Update(&md5_ctx, (HPDF_BYTE *) "libHaru", sizeof("libHaru") - 1);
       HPDF_MD5Update(&md5_ctx, currentTime, HPDF_StrLen((const char *)currentTime, -1));
       HPDF_MD5Final(idkey, &md5_ctx);

       if (HPDF_Array_Add (id, HPDF_Binary_New (pdf->mmgr, idkey, HPDF_MD5_KEY_LEN)) != HPDF_OK)
         return pdf->error.error_no;

       if (HPDF_Array_Add (id, HPDF_Binary_New (pdf->mmgr,idkey,HPDF_MD5_KEY_LEN)) != HPDF_OK)
         return pdf->error.error_no;

       return HPDF_OK;
    }

    return HPDF_OK;
}

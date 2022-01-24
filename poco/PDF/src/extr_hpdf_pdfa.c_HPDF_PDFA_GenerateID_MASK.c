#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_4__ {scalar_t__ error_no; } ;
struct TYPE_5__ {TYPE_1__ error; int /*<<< orphan*/  mmgr; int /*<<< orphan*/  trailer; } ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  int /*<<< orphan*/  HPDF_MD5_CTX ;
typedef  TYPE_2__* HPDF_Doc ;
typedef  int /*<<< orphan*/  HPDF_BYTE ;
typedef  scalar_t__ HPDF_Array ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int HPDF_MD5_KEY_LEN ; 
 int /*<<< orphan*/  HPDF_OCLASS_ARRAY ; 
 scalar_t__ HPDF_OK ; 
 int FUNC8 (char const*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

HPDF_STATUS
FUNC11(HPDF_Doc pdf)
{
    HPDF_Array id;
    HPDF_BYTE *currentTime;
    HPDF_BYTE idkey[HPDF_MD5_KEY_LEN];
    HPDF_MD5_CTX md5_ctx;
    time_t ltime; 

    ltime = FUNC10(NULL); 
    currentTime = (HPDF_BYTE *)FUNC9(&ltime);
        
    id = FUNC4(pdf->trailer, "ID", HPDF_OCLASS_ARRAY);
    if (!id) {
       id = FUNC1(pdf->mmgr);

       if (!id || FUNC3(pdf->trailer, "ID", id) != HPDF_OK)
         return pdf->error.error_no;
       
       FUNC6(&md5_ctx);
       FUNC7(&md5_ctx, (HPDF_BYTE *) "libHaru", sizeof("libHaru") - 1);
       FUNC7(&md5_ctx, currentTime, FUNC8((const char *)currentTime, -1));
       FUNC5(idkey, &md5_ctx);
       
       if (FUNC0 (id, FUNC2 (pdf->mmgr, idkey, HPDF_MD5_KEY_LEN)) != HPDF_OK)
         return pdf->error.error_no;

       if (FUNC0 (id, FUNC2 (pdf->mmgr,idkey,HPDF_MD5_KEY_LEN)) != HPDF_OK)
         return pdf->error.error_no;
    
       return HPDF_OK;
    }
    
    return HPDF_OK;
}
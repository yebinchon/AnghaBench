
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int md5_buf; int md5_std; int md5_stc; int md5_stb; int md5_sta; scalar_t__ md5_i; scalar_t__ md5_n; } ;
typedef TYPE_1__ md5_ctxt ;


 int MD5_A0 ;
 int MD5_B0 ;
 int MD5_C0 ;
 int MD5_D0 ;
 int memset (int ,int ,int) ;

void
md5_init(md5_ctxt *ctxt)
{
 ctxt->md5_n = 0;
 ctxt->md5_i = 0;
 ctxt->md5_sta = MD5_A0;
 ctxt->md5_stb = MD5_B0;
 ctxt->md5_stc = MD5_C0;
 ctxt->md5_std = MD5_D0;
 memset(ctxt->md5_buf, 0, sizeof(ctxt->md5_buf));
}

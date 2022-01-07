
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int char_u ;
struct TYPE_4__ {int uc; } ;
typedef TYPE_1__ block8 ;
typedef int UINT32_T ;
struct TYPE_5__ {int keysum; int badcryptxt; int cryptxt; int plaintxt; int salt; scalar_t__ password; } ;


 int ARRAY_LENGTH (TYPE_2__*) ;
 int EMSG (int ) ;
 int FAIL ;
 int OK ;
 scalar_t__ STRLEN (int ) ;
 int _ (char*) ;
 int bf_check_tables (int ,int ,int) ;
 int bf_e_cblock (int ) ;
 int bf_key_init (int *,int ,int) ;
 TYPE_2__* bf_test_data ;
 int ipa ;
 scalar_t__ memcmp (int ,int ,int) ;
 int memcpy (int ,int ,int) ;
 int pax ;
 int sbi ;
 int sbx ;

__attribute__((used)) static int
bf_self_test()
{
    int i, bn;
    int err = 0;
    block8 bk;
    UINT32_T ui = 0xffffffffUL;



    if (ui != 0xffffffffUL || ui + 1 != 0) {
 err++;
 EMSG(_("E820: sizeof(uint32_t) != 4"));
    }

    if (!bf_check_tables(ipa, sbi, 0x6ffa520a))
 err++;

    bn = ARRAY_LENGTH(bf_test_data);
    for (i = 0; i < bn; i++)
    {
 bf_key_init((char_u *)(bf_test_data[i].password),
      bf_test_data[i].salt,
      (int)STRLEN(bf_test_data[i].salt));
 if (!bf_check_tables(pax, sbx, bf_test_data[i].keysum))
     err++;


 memcpy(bk.uc, bf_test_data[i].plaintxt, 8);
 bf_e_cblock(bk.uc);
 if (memcmp(bk.uc, bf_test_data[i].cryptxt, 8) != 0)
 {
     if (err == 0 && memcmp(bk.uc, bf_test_data[i].badcryptxt, 8) == 0)
  EMSG(_("E817: Blowfish big/little endian use wrong"));
     err++;
 }
    }

    return err > 0 ? FAIL : OK;
}

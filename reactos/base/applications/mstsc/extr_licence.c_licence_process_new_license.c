
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_7__ {scalar_t__ p; } ;
typedef TYPE_1__* STREAM ;


 int True ;
 int g_licence_issued ;
 scalar_t__ g_licence_key ;
 int in_uint16_le (TYPE_1__*,int) ;
 int in_uint32_le (TYPE_1__*,int) ;
 int in_uint8s (TYPE_1__*,int) ;
 int rdssl_rc4_crypt (void*,char*,char*,int) ;
 void* rdssl_rc4_info_create () ;
 int rdssl_rc4_info_delete (void*) ;
 int rdssl_rc4_set_key (void*,char*,int) ;
 int s_check_rem (TYPE_1__*,int) ;
 int save_licence (scalar_t__,int) ;

__attribute__((used)) static void
licence_process_new_license(STREAM s)
{
 void * crypt_key;
 uint32 length;
 int i;

 in_uint8s(s, 2);
 in_uint16_le(s, length);
 if (!s_check_rem(s, length))
  return;

 crypt_key = rdssl_rc4_info_create();
 rdssl_rc4_set_key(crypt_key, (char *)g_licence_key, 16);
 rdssl_rc4_crypt(crypt_key, (char *)s->p, (char *)s->p, length);
 rdssl_rc4_info_delete(crypt_key);


 in_uint8s(s, 4);



 length = 0;
 for (i = 0; i < 4; i++)
 {
  in_uint8s(s, length);
  in_uint32_le(s, length);
  if (!s_check_rem(s, length))
   return;
 }

 g_licence_issued = True;
 save_licence(s->p, length);
}

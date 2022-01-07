
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BannerOutput {int dummy; } ;
typedef int foo ;


 int AUTO_LEN ;
 int PROTO_SSL3 ;
 int banout_append (struct BannerOutput*,int ,char*,int ) ;
 int sprintf_s (char*,int,char*,unsigned int) ;

__attribute__((used)) static void
BANNER_CIPHER(struct BannerOutput *banout, unsigned cipher_suite)
{

    char foo[64];
    sprintf_s(foo, sizeof(foo), "cipher:0x%x", cipher_suite);
    banout_append(banout, PROTO_SSL3, foo, AUTO_LEN);
}

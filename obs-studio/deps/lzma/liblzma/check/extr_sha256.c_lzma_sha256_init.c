
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int s ;
struct TYPE_5__ {scalar_t__ size; int state; } ;
struct TYPE_6__ {TYPE_1__ sha256; } ;
struct TYPE_7__ {TYPE_2__ state; } ;
typedef TYPE_3__ lzma_check_state ;


 int memcpy (int ,int const*,int) ;

extern void
lzma_sha256_init(lzma_check_state *check)
{
 static const uint32_t s[8] = {
  0x6A09E667, 0xBB67AE85, 0x3C6EF372, 0xA54FF53A,
  0x510E527F, 0x9B05688C, 0x1F83D9AB, 0x5BE0CD19,
 };

 memcpy(check->state.sha256.state, s, sizeof(s));
 check->state.sha256.size = 0;

 return;
}

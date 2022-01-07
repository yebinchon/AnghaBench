
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t const pos; int buf; } ;
struct TYPE_5__ {char* buf; size_t size; } ;
struct TYPE_7__ {TYPE_2__ roundTrip; TYPE_1__ data; } ;
typedef TYPE_3__ state_t ;


 int FUZZ_ASSERT_MSG (int,char*) ;
 int memcmp (char const*,int ,size_t const) ;

__attribute__((used)) static void state_checkRoundTrip(state_t const* state)
{
    char const* data = state->data.buf;
    size_t const size = state->data.size;
    FUZZ_ASSERT_MSG(size == state->roundTrip.pos, "Incorrect size!");
    FUZZ_ASSERT_MSG(!memcmp(data, state->roundTrip.buf, size), "Corruption!");
}

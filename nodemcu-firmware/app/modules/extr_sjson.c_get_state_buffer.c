
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct jsonsl_state_st {size_t pos_begin; } ;
struct TYPE_3__ {size_t min_available; char const* buffer; } ;
typedef TYPE_1__ JSN_DATA ;



__attribute__((used)) static const char* get_state_buffer(JSN_DATA *ctx, struct jsonsl_state_st *state)
{
  size_t offset = state->pos_begin - ctx->min_available;
  return ctx->buffer + offset;
}

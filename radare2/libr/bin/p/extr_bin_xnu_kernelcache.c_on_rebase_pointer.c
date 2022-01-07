
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_6__ {int address; } ;
struct TYPE_5__ {scalar_t__ off; scalar_t__ eob; scalar_t__ count; int * buf; int obj; } ;
typedef TYPE_1__ RRebaseCtx ;
typedef TYPE_2__ RParsedPointer ;


 int r_parse_pointer (TYPE_2__*,scalar_t__,int ) ;
 int r_write_le64 (int *,int ) ;

__attribute__((used)) static bool on_rebase_pointer (ut64 offset, ut64 decorated_addr, RRebaseCtx *ctx) {
 if (offset < ctx->off) {
  return 1;
 }
 if (offset >= ctx->eob) {
  return 0;
 }
 ut64 in_buf = offset - ctx->off;
 if (in_buf >= ctx->count || (in_buf + 8) > ctx->count) {
  return 0;
 }

 RParsedPointer ptr;
 r_parse_pointer (&ptr, decorated_addr, ctx->obj);

 r_write_le64 (&ctx->buf[in_buf], ptr.address);

 return 1;
}

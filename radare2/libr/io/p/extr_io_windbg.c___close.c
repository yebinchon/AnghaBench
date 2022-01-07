
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WindCtx ;
struct TYPE_3__ {int data; } ;
typedef TYPE_1__ RIODesc ;


 int windbg_ctx_free (int **) ;

__attribute__((used)) static int __close(RIODesc *fd) {
 windbg_ctx_free ((WindCtx**)&fd->data);
 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pc1_ctx {int dummy; } ;


 int memset (struct pc1_ctx*,int ,int) ;

__attribute__((used)) static void pc1_finish(struct pc1_ctx *pc1)
{

 memset(pc1, 0, sizeof(struct pc1_ctx));
}

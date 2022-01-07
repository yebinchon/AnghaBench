
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_5__ {int next; int priv; TYPE_1__* op; } ;
struct TYPE_4__ {int (* push ) (int ,int ,int const*,int) ;} ;
typedef TYPE_2__ PushFilter ;


 int PXE_BUG ;
 int pushf_write (int ,int const*,int) ;
 int stub1 (int ,int ,int const*,int) ;

__attribute__((used)) static int
wrap_process(PushFilter *mp, const uint8 *data, int len)
{
 int res;

 if (mp->op->push != ((void*)0))
  res = mp->op->push(mp->next, mp->priv, data, len);
 else
  res = pushf_write(mp->next, data, len);
 if (res > 0)
  return PXE_BUG;
 return res;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* Seek ) (TYPE_2__*,int *,int ) ;} ;
struct TYPE_3__ {TYPE_2__* realStream; scalar_t__ size; scalar_t__ pos; } ;
typedef int SRes ;
typedef int Int64 ;
typedef int ESzSeek ;
typedef TYPE_1__ CLookToRead ;


 int stub1 (TYPE_2__*,int *,int ) ;

__attribute__((used)) static SRes LookToRead_Seek(void *pp, Int64 *pos, ESzSeek origin)
{
  CLookToRead *p = (CLookToRead *)pp;
  p->pos = p->size = 0;
  return p->realStream->Seek(p->realStream, pos, origin);
}

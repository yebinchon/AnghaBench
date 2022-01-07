
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UInt64 ;
struct TYPE_4__ {scalar_t__ (* Progress ) (TYPE_1__*,int ,int ) ;} ;
typedef scalar_t__ SRes ;
typedef TYPE_1__ ICompressProgress ;


 scalar_t__ SZ_ERROR_PROGRESS ;
 scalar_t__ SZ_OK ;
 scalar_t__ stub1 (TYPE_1__*,int ,int ) ;

__attribute__((used)) static SRes Progress(ICompressProgress *p, UInt64 inSize, UInt64 outSize)
{
  return (p && p->Progress(p, inSize, outSize) != SZ_OK) ? SZ_ERROR_PROGRESS : SZ_OK;
}

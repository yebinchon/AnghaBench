
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UInt32 ;
struct TYPE_4__ {scalar_t__ (* Write ) (TYPE_1__*,void const*,scalar_t__) ;} ;
typedef int SRes ;
typedef TYPE_1__ ISeqOutStream ;


 int SZ_ERROR_WRITE ;
 int SZ_OK ;
 scalar_t__ stub1 (TYPE_1__*,void const*,scalar_t__) ;

__attribute__((used)) static SRes WriteBytes(ISeqOutStream *s, const void *buf, UInt32 size)
{
  return (s->Write(s, buf, size) == size) ? SZ_OK : SZ_ERROR_WRITE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EFBIG ;
 scalar_t__ ENOMEM ;
 int ERRCODE_OUT_OF_MEMORY ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 scalar_t__ errno ;

__attribute__((used)) static int
errcode_for_dynamic_shared_memory(void)
{
 if (errno == EFBIG || errno == ENOMEM)
  return errcode(ERRCODE_OUT_OF_MEMORY);
 else
  return errcode_for_file_access();
}

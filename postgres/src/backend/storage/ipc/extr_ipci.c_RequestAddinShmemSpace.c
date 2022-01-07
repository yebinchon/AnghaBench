
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;


 scalar_t__ IsUnderPostmaster ;
 int add_size (int ,int ) ;
 int addin_request_allowed ;
 int total_addin_request ;

void
RequestAddinShmemSpace(Size size)
{
 if (IsUnderPostmaster || !addin_request_allowed)
  return;
 total_addin_request = add_size(total_addin_request, size);
}

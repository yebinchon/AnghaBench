
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef scalar_t__ uint32 ;
typedef int dsm_control_item ;


 int dsm_control_header ;
 int item ;
 int offsetof (int ,int ) ;

__attribute__((used)) static uint64
dsm_control_bytes_needed(uint32 nitems)
{
 return offsetof(dsm_control_header, item)
  + sizeof(dsm_control_item) * (uint64) nitems;
}

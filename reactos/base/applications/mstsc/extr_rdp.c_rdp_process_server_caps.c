
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint16 ;
struct TYPE_7__ {int * p; } ;
typedef TYPE_1__* STREAM ;




 int in_uint16_le (TYPE_1__*,int) ;
 int in_uint8s (TYPE_1__*,int) ;
 int rdp_process_bitmap_caps (TYPE_1__*) ;
 int rdp_process_general_caps (TYPE_1__*) ;

__attribute__((used)) static void
rdp_process_server_caps(STREAM s, uint16 length)
{
 int n;
 uint8 *next, *start;
 uint16 ncapsets, capset_type, capset_length;

 start = s->p;

 in_uint16_le(s, ncapsets);
 in_uint8s(s, 2);

 for (n = 0; n < ncapsets; n++)
 {
  if (s->p > start + length)
   return;

  in_uint16_le(s, capset_type);
  in_uint16_le(s, capset_length);

  next = s->p + capset_length - 4;

  switch (capset_type)
  {
   case 128:
    rdp_process_general_caps(s);
    break;

   case 129:
    rdp_process_bitmap_caps(s);
    break;
  }

  s->p = next;
 }
}

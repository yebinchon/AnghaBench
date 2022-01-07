
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STREAM ;


 int process_colour_pointer_common (int ,int) ;

void
process_colour_pointer_pdu(STREAM s)
{
 process_colour_pointer_common(s, 24);
}

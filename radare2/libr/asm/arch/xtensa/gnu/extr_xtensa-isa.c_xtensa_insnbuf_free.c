
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xtensa_isa ;
typedef int xtensa_insnbuf ;


 int free (int ) ;

void
xtensa_insnbuf_free (xtensa_isa isa __attribute__ ((unused)),
       xtensa_insnbuf buf)
{
  free (buf);
}

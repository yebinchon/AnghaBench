
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xtensa_isa ;
typedef int xtensa_insnbuf_word ;
typedef int xtensa_insnbuf ;


 int CHECK_ALLOC (int ,int ) ;
 int malloc (int) ;
 int xtensa_insnbuf_size (int ) ;

xtensa_insnbuf
xtensa_insnbuf_alloc (xtensa_isa isa)
{
  xtensa_insnbuf result = (xtensa_insnbuf)
    malloc (xtensa_insnbuf_size (isa) * sizeof (xtensa_insnbuf_word));
  CHECK_ALLOC (result, 0);
  return result;
}

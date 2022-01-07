
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int mrb_state ;
typedef int mrb_irep ;


 int FLAG_SRC_MALLOC ;
 int FLAG_SRC_STATIC ;
 scalar_t__ mrb_ro_data_p (char*) ;
 int * read_irep (int *,int const*,size_t,int ) ;

mrb_irep*
mrb_read_irep(mrb_state *mrb, const uint8_t *bin)
{



  uint8_t flags = FLAG_SRC_STATIC;


  return read_irep(mrb, bin, (size_t)-1, flags);
}

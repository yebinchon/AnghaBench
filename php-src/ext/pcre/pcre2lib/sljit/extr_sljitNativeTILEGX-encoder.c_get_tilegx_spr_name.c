
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tilegx_spr {int number; char const* name; } ;


 void* bsearch (void const*,void const*,int ,int,int ) ;
 int tilegx_num_sprs ;
 int tilegx_spr_compare ;
 scalar_t__ tilegx_sprs ;

const char *
get_tilegx_spr_name (int num)
{
  void *result;
  struct tilegx_spr key;

  key.number = num;
  result = bsearch((const void *) &key, (const void *) tilegx_sprs,
                   tilegx_num_sprs, sizeof (struct tilegx_spr),
                   tilegx_spr_compare);

  if (result == ((void*)0))
  {
    return (((void*)0));
  }
  else
  {
    struct tilegx_spr *result_ptr = (struct tilegx_spr *) result;
    return (result_ptr->name);
  }
}

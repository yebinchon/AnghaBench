
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lzma_ret ;
struct TYPE_4__ {scalar_t__ id; } ;
typedef TYPE_1__ lzma_filter ;
struct TYPE_5__ {scalar_t__ id; int non_last_ok; int last_ok; scalar_t__ changes_size; } ;


 size_t LZMA_FILTERS_MAX ;
 int LZMA_OK ;
 int LZMA_OPTIONS_ERROR ;
 int LZMA_PROG_ERROR ;
 scalar_t__ LZMA_VLI_UNKNOWN ;
 TYPE_3__* features ;

__attribute__((used)) static lzma_ret
validate_chain(const lzma_filter *filters, size_t *count)
{

 if (filters == ((void*)0) || filters[0].id == LZMA_VLI_UNKNOWN)
  return LZMA_PROG_ERROR;



 size_t changes_size_count = 0;


 bool non_last_ok = 1;




 bool last_ok = 0;

 size_t i = 0;
 do {
  size_t j;
  for (j = 0; filters[i].id != features[j].id; ++j)
   if (features[j].id == LZMA_VLI_UNKNOWN)
    return LZMA_OPTIONS_ERROR;



  if (!non_last_ok)
   return LZMA_OPTIONS_ERROR;

  non_last_ok = features[j].non_last_ok;
  last_ok = features[j].last_ok;
  changes_size_count += features[j].changes_size;

 } while (filters[++i].id != LZMA_VLI_UNKNOWN);




 if (i > LZMA_FILTERS_MAX || !last_ok || changes_size_count > 3)
  return LZMA_OPTIONS_ERROR;

 *count = i;
 return LZMA_OK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_18__ {int * pagemap; int fpm; } ;
typedef TYPE_2__ dsa_segment_map ;
typedef int dsa_pointer ;
typedef int dsa_area_pool ;
struct TYPE_19__ {TYPE_1__* control; } ;
typedef TYPE_3__ dsa_area ;
struct TYPE_17__ {int * pools; } ;


 int AllocHugeSizeIsValid (size_t) ;
 int AllocSizeIsValid (size_t) ;
 int Assert (int) ;
 int DSA_ALLOC_HUGE ;
 int DSA_ALLOC_NO_OOM ;
 int DSA_ALLOC_ZERO ;
 int DSA_AREA_LOCK (TYPE_3__*) ;
 int DSA_MAKE_POINTER (int ,size_t) ;
 int DSA_SCLASS_BLOCK_OF_SPANS ;
 int DSA_SCLASS_LOCK (TYPE_3__*,size_t) ;
 size_t DSA_SCLASS_SPAN_LARGE ;
 size_t DSA_SIZE_CLASS_MAP_QUANTUM ;
 int DsaPointerIsValid (int ) ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 int FATAL ;
 size_t FPM_PAGE_SIZE ;
 int FreePageManagerGet (int ,size_t,size_t*) ;
 int InvalidDsaPointer ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int alloc_object (TYPE_3__*,int) ;
 int dsa_free (TYPE_3__*,int ) ;
 int dsa_get_address (TYPE_3__*,int ) ;
 size_t* dsa_size_class_map ;
 size_t* dsa_size_classes ;
 int elog (int ,char*,size_t) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,size_t) ;
 int errmsg (char*) ;
 size_t fpm_size_to_pages (size_t) ;
 TYPE_2__* get_best_segment (TYPE_3__*,size_t) ;
 int get_segment_index (TYPE_3__*,TYPE_2__*) ;
 int init_span (TYPE_3__*,int ,int *,int ,size_t,size_t) ;
 int lengthof (size_t*) ;
 TYPE_2__* make_new_segment (TYPE_3__*,size_t) ;
 int memset (int ,int ,size_t) ;

dsa_pointer
dsa_allocate_extended(dsa_area *area, size_t size, int flags)
{
 uint16 size_class;
 dsa_pointer start_pointer;
 dsa_segment_map *segment_map;
 dsa_pointer result;

 Assert(size > 0);


 if (((flags & DSA_ALLOC_HUGE) != 0 && !AllocHugeSizeIsValid(size)) ||
  ((flags & DSA_ALLOC_HUGE) == 0 && !AllocSizeIsValid(size)))
  elog(ERROR, "invalid DSA memory alloc request size %zu", size);
 if (size > dsa_size_classes[lengthof(dsa_size_classes) - 1])
 {
  size_t npages = fpm_size_to_pages(size);
  size_t first_page;
  dsa_pointer span_pointer;
  dsa_area_pool *pool = &area->control->pools[DSA_SCLASS_SPAN_LARGE];


  span_pointer = alloc_object(area, DSA_SCLASS_BLOCK_OF_SPANS);
  if (!DsaPointerIsValid(span_pointer))
  {

   if ((flags & DSA_ALLOC_NO_OOM) == 0)
    ereport(ERROR,
      (errcode(ERRCODE_OUT_OF_MEMORY),
       errmsg("out of memory"),
       errdetail("Failed on DSA request of size %zu.",
           size)));
   return InvalidDsaPointer;
  }

  LWLockAcquire(DSA_AREA_LOCK(area), LW_EXCLUSIVE);


  segment_map = get_best_segment(area, npages);
  if (segment_map == ((void*)0))
   segment_map = make_new_segment(area, npages);
  if (segment_map == ((void*)0))
  {

   LWLockRelease(DSA_AREA_LOCK(area));
   dsa_free(area, span_pointer);


   if ((flags & DSA_ALLOC_NO_OOM) == 0)
    ereport(ERROR,
      (errcode(ERRCODE_OUT_OF_MEMORY),
       errmsg("out of memory"),
       errdetail("Failed on DSA request of size %zu.",
           size)));
   return InvalidDsaPointer;
  }
  if (!FreePageManagerGet(segment_map->fpm, npages, &first_page))
   elog(FATAL,
     "dsa_allocate could not find %zu free pages", npages);
  LWLockRelease(DSA_AREA_LOCK(area));

  start_pointer = DSA_MAKE_POINTER(get_segment_index(area, segment_map),
           first_page * FPM_PAGE_SIZE);


  LWLockAcquire(DSA_SCLASS_LOCK(area, DSA_SCLASS_SPAN_LARGE),
       LW_EXCLUSIVE);
  init_span(area, span_pointer, pool, start_pointer, npages,
      DSA_SCLASS_SPAN_LARGE);
  segment_map->pagemap[first_page] = span_pointer;
  LWLockRelease(DSA_SCLASS_LOCK(area, DSA_SCLASS_SPAN_LARGE));


  if ((flags & DSA_ALLOC_ZERO) != 0)
   memset(dsa_get_address(area, start_pointer), 0, size);

  return start_pointer;
 }


 if (size < lengthof(dsa_size_class_map) * DSA_SIZE_CLASS_MAP_QUANTUM)
 {
  int mapidx;


  mapidx = ((size + DSA_SIZE_CLASS_MAP_QUANTUM - 1) /
      DSA_SIZE_CLASS_MAP_QUANTUM) - 1;
  size_class = dsa_size_class_map[mapidx];
 }
 else
 {
  uint16 min;
  uint16 max;


  min = dsa_size_class_map[lengthof(dsa_size_class_map) - 1];
  max = lengthof(dsa_size_classes) - 1;

  while (min < max)
  {
   uint16 mid = (min + max) / 2;
   uint16 class_size = dsa_size_classes[mid];

   if (class_size < size)
    min = mid + 1;
   else
    max = mid;
  }

  size_class = min;
 }
 Assert(size <= dsa_size_classes[size_class]);
 Assert(size_class == 0 || size > dsa_size_classes[size_class - 1]);


 result = alloc_object(area, size_class);


 if (!DsaPointerIsValid(result))
 {

  if ((flags & DSA_ALLOC_NO_OOM) == 0)
   ereport(ERROR,
     (errcode(ERRCODE_OUT_OF_MEMORY),
      errmsg("out of memory"),
      errdetail("Failed on DSA request of size %zu.", size)));
  return InvalidDsaPointer;
 }


 if ((flags & DSA_ALLOC_ZERO) != 0)
  memset(dsa_get_address(area, result), 0, size);

 return result;
}

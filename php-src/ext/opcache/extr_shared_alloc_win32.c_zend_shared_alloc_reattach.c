
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ app_shared_globals; } ;
typedef TYPE_1__ zend_smm_shared_globals ;
typedef int zend_shared_segment ;
typedef int zend_accel_shared_globals ;
typedef int info ;
struct TYPE_8__ {scalar_t__ file_cache_fallback; scalar_t__ file_cache; } ;
struct TYPE_7__ {scalar_t__ State; size_t RegionSize; } ;
typedef TYPE_2__ MEMORY_BASIC_INFORMATION ;
typedef int FILE ;
typedef int DWORD ;


 int ACCEL_LOG_FATAL ;
 int ACCEL_LOG_WARNING ;
 int ALLOC_FAILURE ;
 int ALLOC_FAIL_MAPPING ;
 int ALLOC_FALLBACK ;
 int ERROR_INVALID_ADDRESS ;
 int FILE_MAP_ALL_ACCESS ;
 int FILE_MAP_EXECUTE ;
 int GetLastError () ;
 scalar_t__ MEM_FREE ;
 int * MapViewOfFileEx (int ,int,int ,int ,size_t,void*) ;
 int PAGE_READWRITE ;
 int SUCCESSFULLY_REATTACHED ;
 int VirtualProtect (int *,size_t,int ,int *) ;
 scalar_t__ VirtualQuery (void*,TYPE_2__*,int) ;
 TYPE_4__ ZCG (int ) ;
 size_t ZEND_ALIGNED_SIZE (int) ;
 int accel_directives ;
 int * accel_shared_globals ;
 scalar_t__ execute_ex ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fscanf (int *,char*,void**) ;
 char* get_mmap_base_file () ;
 int * mapping_base ;
 int memfile ;
 TYPE_1__* smm_shared_globals ;
 scalar_t__ win32_utime (char*,int *) ;
 int zend_win_error_message (int ,char*,int) ;

__attribute__((used)) static int zend_shared_alloc_reattach(size_t requested_size, char **error_in)
{
 int err;
 void *wanted_mapping_base;
 char *mmap_base_file = get_mmap_base_file();
 FILE *fp = fopen(mmap_base_file, "r");
 MEMORY_BASIC_INFORMATION info;
 void *execute_ex_base;
 int execute_ex_moved;

 if (!fp) {
  err = GetLastError();
  zend_win_error_message(ACCEL_LOG_WARNING, mmap_base_file, err);
  zend_win_error_message(ACCEL_LOG_FATAL, "Unable to open base address file", err);
  *error_in="fopen";
  return ALLOC_FAILURE;
 }
 if (!fscanf(fp, "%p", &wanted_mapping_base)) {
  err = GetLastError();
  zend_win_error_message(ACCEL_LOG_FATAL, "Unable to read base address", err);
  *error_in="read mapping base";
  fclose(fp);
  return ALLOC_FAILURE;
 }
 if (!fscanf(fp, "%p", &execute_ex_base)) {
  err = GetLastError();
  zend_win_error_message(ACCEL_LOG_FATAL, "Unable to read execute_ex base address", err);
  *error_in="read execute_ex base";
  fclose(fp);
  return ALLOC_FAILURE;
 }
 fclose(fp);

 if (0 > win32_utime(mmap_base_file, ((void*)0))) {
  err = GetLastError();
  zend_win_error_message(ACCEL_LOG_WARNING, mmap_base_file, err);
 }

 execute_ex_moved = (void *)execute_ex != execute_ex_base;


 if (execute_ex_moved ||
     VirtualQuery(wanted_mapping_base, &info, sizeof(info)) == 0 ||
     info.State != MEM_FREE ||
     info.RegionSize < requested_size) {
  if (execute_ex_moved) {
   err = ERROR_INVALID_ADDRESS;
   zend_win_error_message(ACCEL_LOG_FATAL, "Opcode handlers are unusable due to ASLR. Please setup opcache.file_cache and opcache.file_cache_fallback directives for more convenient Opcache usage", err);
  } else {
   err = ERROR_INVALID_ADDRESS;
   zend_win_error_message(ACCEL_LOG_FATAL, "Base address marks unusable memory region. Please setup opcache.file_cache and opcache.file_cache_fallback directives for more convenient Opcache usage", err);
  }
  return ALLOC_FAILURE;
 }

 mapping_base = MapViewOfFileEx(memfile, FILE_MAP_ALL_ACCESS|FILE_MAP_EXECUTE, 0, 0, 0, wanted_mapping_base);

 if (mapping_base == ((void*)0)) {
  err = GetLastError();
  if (err == ERROR_INVALID_ADDRESS) {
   zend_win_error_message(ACCEL_LOG_FATAL, "Unable to reattach to base address", err);
   return ALLOC_FAILURE;
  }
  return ALLOC_FAIL_MAPPING;
 } else {
  DWORD old;

  if (!VirtualProtect(mapping_base, requested_size, PAGE_READWRITE, &old)) {
   err = GetLastError();
   zend_win_error_message(ACCEL_LOG_FATAL, "VirtualProtect() failed", err);
   return ALLOC_FAIL_MAPPING;
  }
 }

 smm_shared_globals = (zend_smm_shared_globals *) mapping_base;

 return SUCCESSFULLY_REATTACHED;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t size; scalar_t__ pos; void* p; } ;
typedef TYPE_1__ zend_shared_segment ;
struct TYPE_5__ {char* mmap_base; } ;
typedef int FILE ;
typedef size_t DWORD ;


 int ACCEL_FILEMAP_NAME ;
 int ACCEL_LOG_FATAL ;
 int ACCEL_LOG_WARNING ;
 int ALLOC_FAILURE ;
 int ALLOC_FAIL_MAPPING ;
 int ALLOC_SUCCESS ;
 int CloseHandle (int *) ;
 int * CreateFileMapping (int ,int *,int,size_t,size_t,int ) ;
 int FILE_MAP_ALL_ACCESS ;
 int FILE_MAP_EXECUTE ;
 int FILE_MAP_READ ;
 int FILE_MAP_WRITE ;
 int GetLastError () ;
 int INVALID_HANDLE_VALUE ;
 int MAX_MAP_RETRIES ;
 void* MapViewOfFileEx (int *,int,int ,int ,int ,void*) ;
 int * OpenFileMapping (int,int ,int ) ;
 int PAGE_EXECUTE_READWRITE ;
 int PAGE_READWRITE ;
 int SEC_COMMIT ;
 int Sleep (int) ;
 int VirtualProtect (void*,size_t,int ,size_t*) ;
 TYPE_3__ ZCG (int ) ;
 int accel_directives ;
 scalar_t__ calloc (int,int) ;
 int create_name_with_username (int ) ;
 scalar_t__ execute_ex ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,void*) ;
 char* get_mmap_base_file () ;
 void* mapping_base ;
 int * memfile ;
 int sscanf (char*,char*,void**) ;
 int zend_shared_alloc_lock_win32 () ;
 int zend_shared_alloc_reattach (size_t,char**) ;
 int zend_shared_alloc_unlock_win32 () ;
 int zend_win_error_message (int ,char*,int) ;

__attribute__((used)) static int create_segments(size_t requested_size, zend_shared_segment ***shared_segments_p, int *shared_segments_count, char **error_in)
{
 int err = 0, ret;
 zend_shared_segment *shared_segment;
 int map_retries = 0;
 void *default_mapping_base_set[] = { 0, 0 };
 void *vista_mapping_base_set[] = { (void *) 0x20000000, (void *) 0x21000000, (void *) 0x30000000, (void *) 0x31000000, (void *) 0x50000000, 0 };
 DWORD size_high = 0, size_low = requested_size;

 void **wanted_mapping_base = default_mapping_base_set;

 zend_shared_alloc_lock_win32();



 do {
  memfile = OpenFileMapping(FILE_MAP_READ|FILE_MAP_WRITE|FILE_MAP_EXECUTE, 0, create_name_with_username(ACCEL_FILEMAP_NAME));
  if (memfile == ((void*)0)) {
   err = GetLastError();
   break;
  }

  ret = zend_shared_alloc_reattach(requested_size, error_in);
  if (ret == ALLOC_FAIL_MAPPING) {
   err = GetLastError();

   CloseHandle(memfile);
   memfile = ((void*)0);
   if (++map_retries >= MAX_MAP_RETRIES) {
    break;
   }
   zend_shared_alloc_unlock_win32();
   Sleep(1000 * (map_retries + 1));
   zend_shared_alloc_lock_win32();
  } else {
   zend_shared_alloc_unlock_win32();
   return ret;
  }
 } while (1);

 if (map_retries == MAX_MAP_RETRIES) {
  zend_shared_alloc_unlock_win32();
  zend_win_error_message(ACCEL_LOG_FATAL, "Unable to open file mapping", err);
  *error_in = "OpenFileMapping";
  return ALLOC_FAILURE;
 }


 *shared_segments_count = 1;
 *shared_segments_p = (zend_shared_segment **) calloc(1, sizeof(zend_shared_segment)+sizeof(void *));
 if (!*shared_segments_p) {
  err = GetLastError();
  zend_shared_alloc_unlock_win32();
  zend_win_error_message(ACCEL_LOG_FATAL, "calloc() failed", err);
  *error_in = "calloc";
  return ALLOC_FAILURE;
 }
 shared_segment = (zend_shared_segment *)((char *)(*shared_segments_p) + sizeof(void *));
 (*shared_segments_p)[0] = shared_segment;

 memfile = CreateFileMapping(INVALID_HANDLE_VALUE, ((void*)0), PAGE_EXECUTE_READWRITE | SEC_COMMIT, size_high, size_low,
        create_name_with_username(ACCEL_FILEMAP_NAME));
 if (memfile == ((void*)0)) {
  err = GetLastError();
  zend_shared_alloc_unlock_win32();
  zend_win_error_message(ACCEL_LOG_FATAL, "Unable to create file mapping", err);
  *error_in = "CreateFileMapping";
  return ALLOC_FAILURE;
 }




 if (!ZCG(accel_directives).mmap_base || !*ZCG(accel_directives).mmap_base) {
  wanted_mapping_base = vista_mapping_base_set;
 } else {
  char *s = ZCG(accel_directives).mmap_base;


  if (*s == '0' && *(s + 1) == 'x') {
   s += 2;
  }
  if (sscanf(s, "%p", &default_mapping_base_set[0]) != 1) {
   zend_shared_alloc_unlock_win32();
   zend_win_error_message(ACCEL_LOG_FATAL, "Bad mapping address specified in opcache.mmap_base", err);
   return ALLOC_FAILURE;
  }
 }

 do {
  shared_segment->p = mapping_base = MapViewOfFileEx(memfile, FILE_MAP_ALL_ACCESS|FILE_MAP_EXECUTE, 0, 0, 0, *wanted_mapping_base);
  if (*wanted_mapping_base == ((void*)0)) {
   break;
  }
  wanted_mapping_base++;
 } while (!mapping_base);

 if (mapping_base == ((void*)0)) {
  err = GetLastError();
  zend_shared_alloc_unlock_win32();
  zend_win_error_message(ACCEL_LOG_FATAL, "Unable to create view for file mapping", err);
  *error_in = "MapViewOfFile";
  return ALLOC_FAILURE;
 } else {
  char *mmap_base_file;
  void *execute_ex_base = (void *)execute_ex;
  FILE *fp;
  DWORD old;

  if (!VirtualProtect(mapping_base, requested_size, PAGE_READWRITE, &old)) {
   err = GetLastError();
   zend_win_error_message(ACCEL_LOG_FATAL, "VirtualProtect() failed", err);
   return ALLOC_FAILURE;
  }
  mmap_base_file = get_mmap_base_file();
  fp = fopen(mmap_base_file, "w");
  if (!fp) {
   err = GetLastError();
   zend_shared_alloc_unlock_win32();
   zend_win_error_message(ACCEL_LOG_WARNING, mmap_base_file, err);
   zend_win_error_message(ACCEL_LOG_FATAL, "Unable to write base address", err);
   return ALLOC_FAILURE;
  }
  fprintf(fp, "%p\n", mapping_base);
  fprintf(fp, "%p\n", execute_ex_base);
  fclose(fp);
 }

 shared_segment->pos = 0;
 shared_segment->size = requested_size;

 zend_shared_alloc_unlock_win32();

 return ALLOC_SUCCESS;
}

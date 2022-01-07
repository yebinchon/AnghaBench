
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct game_capture {int * data; TYPE_1__* global_hook_info; int hook_data_map; int pitch; int cy; int cx; } ;
typedef enum capture_result { ____Placeholder_capture_result } capture_result ;
struct TYPE_2__ {int map_size; int map_id; int pitch; int cy; int cx; } ;
typedef int DWORD ;


 int CAPTURE_FAIL ;
 int CAPTURE_RETRY ;
 int CAPTURE_SUCCESS ;
 int CloseHandle (int ) ;
 int FILE_MAP_ALL_ACCESS ;
 int GetLastError () ;
 int * MapViewOfFile (int ,int ,int ,int ,int ) ;
 int SHMEM_TEXTURE ;
 int UnmapViewOfFile (int *) ;
 int open_map_plus_id (struct game_capture*,int ,int ) ;
 int warn (char*,int) ;

__attribute__((used)) static inline enum capture_result init_capture_data(struct game_capture *gc)
{
 gc->cx = gc->global_hook_info->cx;
 gc->cy = gc->global_hook_info->cy;
 gc->pitch = gc->global_hook_info->pitch;

 if (gc->data) {
  UnmapViewOfFile(gc->data);
  gc->data = ((void*)0);
 }

 CloseHandle(gc->hook_data_map);

 gc->hook_data_map = open_map_plus_id(gc, SHMEM_TEXTURE,
          gc->global_hook_info->map_id);
 if (!gc->hook_data_map) {
  DWORD error = GetLastError();
  if (error == 2) {
   return CAPTURE_RETRY;
  } else {
   warn("init_capture_data: failed to open file "
        "mapping: %lu",
        error);
  }
  return CAPTURE_FAIL;
 }

 gc->data = MapViewOfFile(gc->hook_data_map, FILE_MAP_ALL_ACCESS, 0, 0,
     gc->global_hook_info->map_size);
 if (!gc->data) {
  warn("init_capture_data: failed to map data view: %lu",
       GetLastError());
  return CAPTURE_FAIL;
 }

 return CAPTURE_SUCCESS;
}

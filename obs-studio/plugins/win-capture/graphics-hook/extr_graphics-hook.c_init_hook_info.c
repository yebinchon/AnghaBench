
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hook_info {int dummy; } ;


 int FILE_MAP_ALL_ACCESS ;
 int GetCurrentProcessId () ;
 int GetLastError () ;
 int MapViewOfFile (int ,int ,int ,int ,int) ;
 int create_hook_info (int ) ;
 int filemap_hook_info ;
 int global_hook_info ;
 int hlog (char*,int ) ;

__attribute__((used)) static inline bool init_hook_info(void)
{
 filemap_hook_info = create_hook_info(GetCurrentProcessId());
 if (!filemap_hook_info) {
  hlog("Failed to create hook info file mapping: %lu",
       GetLastError());
  return 0;
 }

 global_hook_info = MapViewOfFile(filemap_hook_info, FILE_MAP_ALL_ACCESS,
      0, 0, sizeof(struct hook_info));
 if (!global_hook_info) {
  hlog("Failed to map the hook info file mapping: %lu",
       GetLastError());
  return 0;
 }

 return 1;
}

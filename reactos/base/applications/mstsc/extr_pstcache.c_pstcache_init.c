
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8 ;
typedef int RD_BOOL ;


 int DEBUG (char*) ;
 int False ;
 int True ;
 scalar_t__ g_bitmap_cache ;
 scalar_t__ g_bitmap_cache_persist_enable ;
 int g_pstcache_Bpp ;
 scalar_t__ g_pstcache_enumerated ;
 int* g_pstcache_fd ;
 int g_server_depth ;
 int rd_close_file (int) ;
 int rd_lock_file (int,int ,int ) ;
 int rd_open_file (char*) ;
 int rd_pstcache_mkdir () ;
 int sprintf (char*,char*,size_t,int) ;
 int warning (char*) ;

RD_BOOL
pstcache_init(uint8 cache_id)
{
 int fd;
 char filename[256];

 if (g_pstcache_enumerated)
  return True;

 g_pstcache_fd[cache_id] = 0;

 if (!(g_bitmap_cache && g_bitmap_cache_persist_enable))
  return False;

 if (!rd_pstcache_mkdir())
 {
  DEBUG(("failed to get/make cache directory!\n"));
  return False;
 }

 g_pstcache_Bpp = (g_server_depth + 7) / 8;
 sprintf(filename, "cache/pstcache_%d_%d", cache_id, g_pstcache_Bpp);
 DEBUG(("persistent bitmap cache file: %s\n", filename));

 fd = rd_open_file(filename);
 if (fd == -1)
  return False;

 if (!rd_lock_file(fd, 0, 0))
 {
  warning("Persistent bitmap caching is disabled. (The file is already in use)\n");
  rd_close_file(fd);
  return False;
 }

 g_pstcache_fd[cache_id] = fd;
 return True;
}

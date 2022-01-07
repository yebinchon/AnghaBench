
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct game_capture {int process_id; } ;
typedef int HANDLE ;


 int SHMEM_HOOK_INFO ;
 int open_map_plus_id (struct game_capture*,int ,int ) ;

__attribute__((used)) static inline HANDLE open_hook_info(struct game_capture *gc)
{
 return open_map_plus_id(gc, SHMEM_HOOK_INFO, gc->process_id);
}

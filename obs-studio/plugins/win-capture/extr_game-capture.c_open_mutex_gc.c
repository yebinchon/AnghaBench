
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct game_capture {int process_id; } ;
typedef int HANDLE ;


 int open_mutex_plus_id (struct game_capture*,int const*,int ) ;

__attribute__((used)) static inline HANDLE open_mutex_gc(struct game_capture *gc, const wchar_t *name)
{
 return open_mutex_plus_id(gc, name, gc->process_id);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct game_capture {int app_sid; scalar_t__ is_app; } ;
typedef int HANDLE ;
typedef int DWORD ;


 int _snwprintf (int *,int,char*,int const*,int ) ;
 int open_app_mutex (int ,int *) ;
 int open_mutex (int *) ;

__attribute__((used)) static inline HANDLE open_mutex_plus_id(struct game_capture *gc,
     const wchar_t *name, DWORD id)
{
 wchar_t new_name[64];
 _snwprintf(new_name, 64, L"%s%lu", name, id);
 return gc->is_app ? open_app_mutex(gc->app_sid, new_name)
     : open_mutex(new_name);
}

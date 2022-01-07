
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct game_capture {int cx; scalar_t__ active; } ;



__attribute__((used)) static uint32_t game_capture_width(void *data)
{
 struct game_capture *gc = data;
 return gc->active ? gc->cx : 0;
}

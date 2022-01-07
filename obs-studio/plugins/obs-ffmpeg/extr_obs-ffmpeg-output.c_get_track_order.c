
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int get_track_order(int track_config, size_t mix_index)
{
 int position = 0;
 for (size_t i = 0; i < mix_index; i++) {
  if (track_config & 1 << i)
   position++;
 }
 return position;
}

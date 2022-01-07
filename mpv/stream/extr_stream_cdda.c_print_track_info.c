
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stream_t ;


 int MP_INFO (int *,char*,int) ;
 int print_cdtext (int *,int) ;

__attribute__((used)) static void print_track_info(stream_t *s, int track)
{
    MP_INFO(s, "Switched to track %d\n", track);
    print_cdtext(s, track);
}

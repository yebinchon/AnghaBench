
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_decode {int * decoder; } ;



__attribute__((used)) static inline bool ffmpeg_decode_valid(struct ffmpeg_decode *decode)
{
 return decode->decoder != ((void*)0);
}

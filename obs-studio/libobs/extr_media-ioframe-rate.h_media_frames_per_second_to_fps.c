
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_frames_per_second {double denominator; scalar_t__ numerator; } ;



__attribute__((used)) static inline double
media_frames_per_second_to_fps(struct media_frames_per_second fps)
{
 return (double)fps.numerator / fps.denominator;
}

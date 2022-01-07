
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_output {int stopping; } ;


 int os_atomic_load_bool (int *) ;

__attribute__((used)) static inline bool stopping(struct ffmpeg_output *output)
{
 return os_atomic_load_bool(&output->stopping);
}

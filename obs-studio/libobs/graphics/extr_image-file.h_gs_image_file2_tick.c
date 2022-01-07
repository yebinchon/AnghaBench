
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int image; } ;
typedef TYPE_1__ gs_image_file2_t ;


 int gs_image_file_tick (int *,int ) ;

__attribute__((used)) static inline bool gs_image_file2_tick(gs_image_file2_t *if2,
           uint64_t elapsed_time_ns)
{
 return gs_image_file_tick(&if2->image, elapsed_time_ns);
}

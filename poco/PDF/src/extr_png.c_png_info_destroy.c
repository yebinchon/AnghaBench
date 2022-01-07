
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* png_structp ;
typedef int png_infop ;
struct TYPE_5__ {scalar_t__ num_chunk_list; int * chunk_list; } ;


 int PNG_FREE_ALL ;
 int png_debug (int,char*) ;
 int png_free (TYPE_1__*,int *) ;
 int png_free_data (TYPE_1__*,int ,int ,int) ;
 int png_info ;
 int png_info_init_3 (int *,int ) ;
 int png_sizeof (int ) ;

void
png_info_destroy(png_structp png_ptr, png_infop info_ptr)
{
   png_debug(1, "in png_info_destroy\n");

   png_free_data(png_ptr, info_ptr, PNG_FREE_ALL, -1);
   png_info_init_3(&info_ptr, png_sizeof(png_info));
}

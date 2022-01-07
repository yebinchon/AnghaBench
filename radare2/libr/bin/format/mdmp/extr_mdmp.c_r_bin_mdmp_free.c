
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct r_bin_mdmp_obj* misc_info_1; } ;
struct TYPE_4__ {int memories; } ;
struct TYPE_6__ {TYPE_2__ misc_info; struct r_bin_mdmp_obj* function_table; struct r_bin_mdmp_obj* handle_data; struct r_bin_mdmp_obj* comments_w; struct r_bin_mdmp_obj* comments_a; struct r_bin_mdmp_obj* system_info; struct r_bin_mdmp_obj* exception; int unloaded_modules; int token_infos; int threads; int thread_infos; int operations; int modules; int memory_infos; TYPE_1__ memories64; int memories; int ex_threads; } ;
struct r_bin_mdmp_obj {int * b; struct r_bin_mdmp_obj* hdr; int pe64_bins; int pe32_bins; TYPE_3__ streams; } ;


 int free (struct r_bin_mdmp_obj*) ;
 int r_buf_free (int *) ;
 int r_list_free (int ) ;

void r_bin_mdmp_free(struct r_bin_mdmp_obj *obj) {
 if (!obj) {
  return;
 }

 r_list_free (obj->streams.ex_threads);
 r_list_free (obj->streams.memories);
 r_list_free (obj->streams.memories64.memories);
 r_list_free (obj->streams.memory_infos);
 r_list_free (obj->streams.modules);
 r_list_free (obj->streams.operations);
 r_list_free (obj->streams.thread_infos);
 r_list_free (obj->streams.threads);
 r_list_free (obj->streams.token_infos);
 r_list_free (obj->streams.unloaded_modules);
 free (obj->streams.exception);
 free (obj->streams.system_info);
 free (obj->streams.comments_a);
 free (obj->streams.comments_w);
 free (obj->streams.handle_data);
 free (obj->streams.function_table);
 free (obj->streams.misc_info.misc_info_1);

 r_list_free (obj->pe32_bins);
 r_list_free (obj->pe64_bins);

 r_buf_free (obj->b);
 free (obj->hdr);
 obj->b = ((void*)0);
 free (obj);

 return;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct update_info {int thread_created; int thread; void* param; int callback; void* url; void* user_agent; void* log_prefix; } ;
typedef struct update_info update_info_t ;
typedef int confirm_file_callback_t ;


 void* bstrdup (char const*) ;
 struct update_info* bzalloc (int) ;
 scalar_t__ pthread_create (int *,int *,int ,struct update_info*) ;
 int single_file_thread ;

update_info_t *
update_info_create_single(const char *log_prefix, const char *user_agent,
     const char *file_url,
     confirm_file_callback_t confirm_callback, void *param)
{
 struct update_info *info;

 if (!log_prefix)
  log_prefix = "";

 info = bzalloc(sizeof(*info));
 info->log_prefix = bstrdup(log_prefix);
 info->user_agent = bstrdup(user_agent);
 info->url = bstrdup(file_url);
 info->callback = confirm_callback;
 info->param = param;

 if (pthread_create(&info->thread, ((void*)0), single_file_thread, info) == 0)
  info->thread_created = 1;

 return info;
}

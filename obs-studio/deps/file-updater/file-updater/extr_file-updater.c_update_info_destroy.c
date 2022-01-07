
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct update_info {scalar_t__ remote_package; scalar_t__ cache_package; scalar_t__ local_package; scalar_t__ curl; scalar_t__ header; struct update_info* url; struct update_info* local; struct update_info* cache; struct update_info* temp; struct update_info* user_agent; struct update_info* log_prefix; int file_data; int thread; scalar_t__ thread_created; } ;


 int bfree (struct update_info*) ;
 int curl_easy_cleanup (scalar_t__) ;
 int curl_slist_free_all (scalar_t__) ;
 int da_free (int ) ;
 int obs_data_release (scalar_t__) ;
 int pthread_join (int ,int *) ;

void update_info_destroy(struct update_info *info)
{
 if (!info)
  return;

 if (info->thread_created)
  pthread_join(info->thread, ((void*)0));

 da_free(info->file_data);
 bfree(info->log_prefix);
 bfree(info->user_agent);
 bfree(info->temp);
 bfree(info->cache);
 bfree(info->local);
 bfree(info->url);

 if (info->header)
  curl_slist_free_all(info->header);
 if (info->curl)
  curl_easy_cleanup(info->curl);
 if (info->local_package)
  obs_data_release(info->local_package);
 if (info->cache_package)
  obs_data_release(info->cache_package);
 if (info->remote_package)
  obs_data_release(info->remote_package);
 bfree(info);
}

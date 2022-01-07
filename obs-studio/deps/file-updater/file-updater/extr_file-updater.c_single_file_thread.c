
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int da; int * array; } ;
struct update_info {TYPE_1__ file_data; int param; int (* callback ) (int ,struct file_download_data*) ;int url; int curl; } ;
struct TYPE_4__ {int da; } ;
struct file_download_data {TYPE_2__ buffer; scalar_t__ version; int name; } ;


 int curl_easy_init () ;
 int do_http_request (struct update_info*,int ,long*) ;
 int stub1 (int ,struct file_download_data*) ;
 int warn (char*) ;

__attribute__((used)) static void *single_file_thread(void *data)
{
 struct update_info *info = data;
 struct file_download_data download_data;
 long response_code;

 info->curl = curl_easy_init();
 if (!info->curl) {
  warn("Could not initialize Curl");
  return ((void*)0);
 }

 if (!do_http_request(info, info->url, &response_code))
  return ((void*)0);
 if (!info->file_data.array || !info->file_data.array[0])
  return ((void*)0);

 download_data.name = info->url;
 download_data.version = 0;
 download_data.buffer.da = info->file_data.da;
 info->callback(info->param, &download_data);
 info->file_data.da = download_data.buffer.da;
 return ((void*)0);
}

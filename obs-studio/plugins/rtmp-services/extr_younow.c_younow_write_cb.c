
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct younow_mem_struct {size_t size; scalar_t__* memory; } ;


 int LOG_WARNING ;
 int blog (int ,char*) ;
 int memcpy (scalar_t__*,void*,size_t) ;
 scalar_t__* realloc (scalar_t__*,size_t) ;

__attribute__((used)) static size_t younow_write_cb(void *contents, size_t size, size_t nmemb,
         void *userp)
{
 size_t realsize = size * nmemb;
 struct younow_mem_struct *mem = (struct younow_mem_struct *)userp;

 mem->memory = realloc(mem->memory, mem->size + realsize + 1);
 if (mem->memory == ((void*)0)) {
  blog(LOG_WARNING, "yyounow_write_cb: realloc returned NULL");
  return 0;
 }

 memcpy(&(mem->memory[mem->size]), contents, realsize);
 mem->size += realsize;
 mem->memory[mem->size] = 0;

 return realsize;
}

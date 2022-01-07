
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct younow_mem_struct {char const* memory; scalar_t__ size; } ;
struct dstr {void* array; } ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_OK ;
 int CURLINFO_RESPONSE_CODE ;
 int CURLOPT_SSL_ENABLE_ALPN ;
 int CURLOPT_SSL_VERIFYHOST ;
 int CURLOPT_SSL_VERIFYPEER ;
 int CURLOPT_TIMEOUT ;
 int CURLOPT_URL ;
 int CURLOPT_WRITEDATA ;
 int CURLOPT_WRITEFUNCTION ;
 int LOG_INFO ;
 int LOG_WARNING ;
 int blog (int ,char*,...) ;
 int curl_easy_cleanup (int *) ;
 int curl_easy_getinfo (int *,int ,long*) ;
 int * curl_easy_init () ;
 scalar_t__ curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,void*) ;
 char const* curl_easy_strerror (scalar_t__) ;
 char const* current_ingest ;
 int dstr_copy (struct dstr*,char const*) ;
 int dstr_free (struct dstr*) ;
 int dstr_init (struct dstr*) ;
 int dstr_ncat (struct dstr*,char const*,int) ;
 int free (char const*) ;
 char const* malloc (int) ;
 char* strchr (char const*,char) ;
 char* strdup (char const*) ;
 void* younow_write_cb ;

const char *younow_get_ingest(const char *server, const char *key)
{
 CURL *curl_handle;
 CURLcode res;
 struct younow_mem_struct chunk;
 struct dstr uri;
 long response_code;


 const char *delim = strchr(key, '_');
 if (delim == ((void*)0)) {
  blog(LOG_WARNING,
       "younow_get_ingest: delimiter not found in stream key");
  return server;
 }

 curl_handle = curl_easy_init();

 chunk.memory = malloc(1);
 chunk.size = 0;

 dstr_init(&uri);
 dstr_copy(&uri, server);
 dstr_ncat(&uri, key, delim - key);

 curl_easy_setopt(curl_handle, CURLOPT_URL, uri.array);
 curl_easy_setopt(curl_handle, CURLOPT_SSL_VERIFYPEER, 1);
 curl_easy_setopt(curl_handle, CURLOPT_SSL_VERIFYHOST, 2L);
 curl_easy_setopt(curl_handle, CURLOPT_TIMEOUT, 3L);
 curl_easy_setopt(curl_handle, CURLOPT_WRITEFUNCTION, younow_write_cb);
 curl_easy_setopt(curl_handle, CURLOPT_WRITEDATA, (void *)&chunk);






 res = curl_easy_perform(curl_handle);
 dstr_free(&uri);

 if (res != CURLE_OK) {
  blog(LOG_WARNING,
       "younow_get_ingest: curl_easy_perform() failed: %s",
       curl_easy_strerror(res));
  curl_easy_cleanup(curl_handle);
  free(chunk.memory);
  return server;
 }

 curl_easy_getinfo(curl_handle, CURLINFO_RESPONSE_CODE, &response_code);
 if (response_code != 200) {
  blog(LOG_WARNING,
       "younow_get_ingest: curl_easy_perform() returned code: %ld",
       response_code);
  curl_easy_cleanup(curl_handle);
  free(chunk.memory);
  return server;
 }

 curl_easy_cleanup(curl_handle);

 if (chunk.size == 0) {
  blog(LOG_WARNING,
       "younow_get_ingest: curl_easy_perform() returned empty response");
  free(chunk.memory);
  return server;
 }

 if (current_ingest) {
  free(current_ingest);
  current_ingest = ((void*)0);
 }

 current_ingest = strdup(chunk.memory);
 free(chunk.memory);
 blog(LOG_INFO, "younow_get_ingest: returning ingest: %s",
      current_ingest);
 return current_ingest;
}

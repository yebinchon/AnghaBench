
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int xmlDocPtr ;
typedef int xmlChar ;
typedef int soapHeader ;
typedef int sdlFunctionPtr ;
typedef int cont_len ;


 scalar_t__ IS_ARRAY ;
 scalar_t__ IS_STRING ;
 int * PG (int ) ;
 int SOAP_1_2 ;
 int SOAP_GLOBAL (int) ;
 size_t TRACK_VARS_SERVER ;
 int ZEND_STRL (char*) ;
 int Z_ARRVAL (int ) ;
 int Z_STRVAL_P (int *) ;
 scalar_t__ Z_TYPE (int ) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int http_globals ;
 int php_write (int *,int) ;
 int sapi_add_header (char*,int,int) ;
 int serialize_response_call (int ,int *,int *,int *,int *,int) ;
 int snprintf (char*,int,char*,int) ;
 int strlen (char*) ;
 scalar_t__ strncmp (int ,char*,int) ;
 int xmlDocDumpMemory (int ,int **,int*) ;
 int xmlFree (int *) ;
 int xmlFreeDoc (int ) ;
 int zend_clear_exception () ;
 int * zend_hash_str_find (int ,char*,int) ;
 scalar_t__ zend_ini_long (char*,int,int ) ;
 scalar_t__ zend_is_auto_global_str (int ) ;

__attribute__((used)) static void soap_server_fault_ex(sdlFunctionPtr function, zval* fault, soapHeader *hdr)
{
 int soap_version;
 xmlChar *buf;
 char cont_len[30];
 int size;
 xmlDocPtr doc_return;
 zval *agent_name;
 int use_http_error_status = 1;

 soap_version = SOAP_GLOBAL(soap_version);

 doc_return = serialize_response_call(function, ((void*)0), ((void*)0), fault, hdr, soap_version);

 xmlDocDumpMemory(doc_return, &buf, &size);

 if ((Z_TYPE(PG(http_globals)[TRACK_VARS_SERVER]) == IS_ARRAY || zend_is_auto_global_str(ZEND_STRL("_SERVER"))) &&
  (agent_name = zend_hash_str_find(Z_ARRVAL(PG(http_globals)[TRACK_VARS_SERVER]), "HTTP_USER_AGENT", sizeof("HTTP_USER_AGENT")-1)) != ((void*)0) &&
  Z_TYPE_P(agent_name) == IS_STRING) {
  if (strncmp(Z_STRVAL_P(agent_name), "Shockwave Flash", sizeof("Shockwave Flash")-1) == 0) {
   use_http_error_status = 0;
  }
 }




 if (use_http_error_status) {
  sapi_add_header("HTTP/1.1 500 Internal Service Error", sizeof("HTTP/1.1 500 Internal Service Error")-1, 1);
 }
 if (zend_ini_long("zlib.output_compression", sizeof("zlib.output_compression"), 0)) {
  sapi_add_header("Connection: close", sizeof("Connection: close")-1, 1);
 } else {
  snprintf(cont_len, sizeof(cont_len), "Content-Length: %d", size);
  sapi_add_header(cont_len, strlen(cont_len), 1);
 }
 if (soap_version == SOAP_1_2) {
  sapi_add_header("Content-Type: application/soap+xml; charset=utf-8", sizeof("Content-Type: application/soap+xml; charset=utf-8")-1, 1);
 } else {
  sapi_add_header("Content-Type: text/xml; charset=utf-8", sizeof("Content-Type: text/xml; charset=utf-8")-1, 1);
 }

 php_write(buf, size);

 xmlFreeDoc(doc_return);
 xmlFree(buf);
 zend_clear_exception();
}

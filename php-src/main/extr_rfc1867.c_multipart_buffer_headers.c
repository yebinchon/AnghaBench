
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int zend_llist ;
struct TYPE_10__ {int * c; int member_0; } ;
typedef TYPE_1__ smart_string ;
struct TYPE_11__ {int detect_order_size; int detect_order; int input_encoding; int boundary; } ;
typedef TYPE_2__ multipart_buffer ;
struct TYPE_12__ {char* key; int * value; int member_0; } ;
typedef TYPE_3__ mime_header_entry ;


 char* estrdup (char*) ;
 int find_boundary (TYPE_2__*,int ) ;
 char* get_line (TYPE_2__*) ;
 scalar_t__ isspace (char) ;
 scalar_t__ php_rfc1867_encoding_translation () ;
 int smart_string_0 (TYPE_1__*) ;
 int smart_string_appends (TYPE_1__*,char*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 int zend_llist_add_element (int *,TYPE_3__*) ;
 int zend_multibyte_encoding_detector (unsigned char const*,int ,int ,int ) ;

__attribute__((used)) static int multipart_buffer_headers(multipart_buffer *self, zend_llist *header)
{
 char *line;
 mime_header_entry entry = {0};
 smart_string buf_value = {0};
 char *key = ((void*)0);


 if (!find_boundary(self, self->boundary)) {
  return 0;
 }



 while ((line = get_line(self)) && line[0] != '\0') {

  char *value = ((void*)0);

  if (php_rfc1867_encoding_translation()) {
   self->input_encoding = zend_multibyte_encoding_detector((const unsigned char *) line, strlen(line), self->detect_order, self->detect_order_size);
  }


  if (!isspace(line[0])) {
   value = strchr(line, ':');
  }

  if (value) {
   if (buf_value.c && key) {

    smart_string_0(&buf_value);
    entry.key = key;
    entry.value = buf_value.c;
    zend_llist_add_element(header, &entry);
    buf_value.c = ((void*)0);
    key = ((void*)0);
   }

   *value = '\0';
   do { value++; } while (isspace(*value));

   key = estrdup(line);
   smart_string_appends(&buf_value, value);
  } else if (buf_value.c) {
   smart_string_appends(&buf_value, line);
  } else {
   continue;
  }
 }

 if (buf_value.c && key) {

  smart_string_0(&buf_value);
  entry.key = key;
  entry.value = buf_value.c;
  zend_llist_add_element(header, &entry);
 }

 return 1;
}

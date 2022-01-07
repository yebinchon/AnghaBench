
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut32 ;
struct TYPE_3__ {char* string; } ;
typedef int RListFree ;
typedef int RList ;
typedef int RBuffer ;
typedef TYPE_1__ RBinString ;
typedef int RBinSection ;


 int free (char*) ;
 char* malloc (int) ;
 int * newSection (char const*,scalar_t__,scalar_t__,int ) ;
 int * parseStrings (int *,int ,int) ;
 scalar_t__ r_bin_section_free ;
 int r_buf_read_at (int *,int,int *,int) ;
 int r_buf_size (int *) ;
 int r_list_append (int *,int *) ;
 int r_list_free (int *) ;
 TYPE_1__* r_list_get_n (int *,int) ;
 int * r_list_newf (int ) ;
 scalar_t__ r_read_le32 (char*) ;
 int stringsBeginAt ;

__attribute__((used)) static RList *parseSections(RBuffer *b, int x, int n_sections, RList *strings) {

 int buf_sz = r_buf_size (b);
 char *buf = malloc (buf_sz);
 if (!buf) {
  return ((void*)0);
 }
 bool must_free = 0;
 if (!strings) {
  strings = parseStrings (b, stringsBeginAt, buf_sz);
  if (strings) {
   must_free = 1;
  }
 }

 r_buf_read_at (b, x, (ut8 *)buf, 4);
 if (buf[0] == '_') {
  x += 16;
 }
 RList *res = r_list_newf ((RListFree)r_bin_section_free);
 int i;
 r_buf_read_at (b, x, (ut8 *)buf, buf_sz);
 int off = 0;
 for (i = 0; i < n_sections; i++) {
  off = i * 16;
  if (off + 8 >= buf_sz) {
   break;
  }
  RBinString *name = strings? r_list_get_n (strings, i): ((void*)0);
  const char *namestr = name? name->string: "";
  ut32 A = r_read_le32 (buf + off);
  ut32 B = r_read_le32 (buf + off + 4);




  RBinSection *section = newSection (namestr, A, A + B, 0);
  r_list_append (res, section);
 }
 if (must_free) {
  r_list_free (strings);
 }
 free (buf);
 return res;
}

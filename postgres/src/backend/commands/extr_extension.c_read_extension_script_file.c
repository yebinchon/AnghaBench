
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int encoding; } ;
typedef TYPE_1__ ExtensionControlFile ;


 int GetDatabaseEncoding () ;
 char* pg_any_to_server (char*,int,int) ;
 int pg_verify_mbstr_len (int,char*,int,int) ;
 char* read_whole_file (char const*,int*) ;

__attribute__((used)) static char *
read_extension_script_file(const ExtensionControlFile *control,
         const char *filename)
{
 int src_encoding;
 char *src_str;
 char *dest_str;
 int len;

 src_str = read_whole_file(filename, &len);


 if (control->encoding < 0)
  src_encoding = GetDatabaseEncoding();
 else
  src_encoding = control->encoding;


 pg_verify_mbstr_len(src_encoding, src_str, len, 0);






 dest_str = pg_any_to_server(src_str, len, src_encoding);

 return dest_str;
}

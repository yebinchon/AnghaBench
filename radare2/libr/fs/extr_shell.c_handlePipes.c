
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RFSFile ;
typedef int RFS ;


 int eprintf (char*,char*) ;
 int free (char*) ;
 int r_fs_close (int *,int *) ;
 int r_fs_file_free (int *) ;
 int * r_fs_open (int *,char*,int) ;
 int r_fs_write (int *,int *,int ,int const*,int ) ;
 char* r_str_newf (char*,char const*,char*) ;
 int r_str_trim (char*) ;
 char* r_str_trim_dup (char*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

__attribute__((used)) static bool handlePipes(RFS *fs, char *msg, const ut8 *data, const char *cwd) {
 char *red = strchr (msg, '>');
 if (red) {
  *red++ = 0;
  r_str_trim (msg);
  red = r_str_trim_dup (red);
  if (*red != '/') {
   char *blu = r_str_newf ("%s/%s", cwd, red);
   free (red);
   red = blu;
  } else {
  }
  RFSFile *f = r_fs_open (fs, red, 1);
  if (!f) {
   eprintf ("Cannot open %s for writing\n", red);
   free (red);
   return 1;
  }
  r_fs_write (fs, f, 0, data == ((void*)0) ? (const ut8 *) msg : data, strlen (msg));
  free (red);
  r_fs_close (fs, f);
  r_fs_file_free (f);
  return 1;
 }
 return 0;
}

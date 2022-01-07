
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
struct stat {int const st_mode; int st_uid; int st_gid; } ;


 int FMT_JSON ;
 int FMT_RAW ;




 int const S_IFMT ;

 int S_ISUID ;
 int S_IXUSR ;
 int free (char*) ;
 int lstat (char const*,struct stat*) ;
 int needs_newline ;
 int r_file_is_directory (char const*) ;
 int r_file_size (char const*) ;
 char* r_str_append (char*,char*) ;
 char* r_str_appendf (char*,char*,...) ;
 scalar_t__ r_str_casestr (char*,char*) ;
 char* r_str_rwx_i (int) ;
 char* strdup (char const*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static char *showfile(char *res, const int nth, const char *fpath, const char *name, int printfmt) {



 const char *n = fpath;
 char *nn, *u_rwx = ((void*)0);
 int sz = r_file_size (n);
 int perm, uid = 0, gid = 0;
 int fch = '-';
 if (!strncmp (fpath, "./", 2)) {
  fpath = fpath + 2;
 }
 const bool isdir = r_file_is_directory (n);
 if (isdir) {
  nn = r_str_append (strdup (fpath), "/");
 } else {
  nn = strdup (fpath);
 }
 if (!*nn) {
  free (nn);
  return res;
 }
 perm = isdir? 0755: 0644;
 if (!printfmt) {
  needs_newline = ((nth + 1) % 4)? 1: 0;
  res = r_str_appendf (res, "%18s%s", nn, needs_newline? "  ": "\n");
  free (nn);
  return res;
 }
 u_rwx = strdup ("-");
 fch = isdir? 'd': '-';

 if (printfmt == 'q') {
  res = r_str_appendf (res, "%s\n", nn);
 } else if (printfmt == 'e') {
  const char *eDIR = "📁";
  const char *eLNK = "📎";
  const char *eIMG = "🌅";
  const char *eUID = "🔼";
  const char *eHID = "👀";
  const char *eANY = "  ";

  const char *icon = eANY;
  if (isdir) {
   icon = eDIR;






  } else if (r_str_casestr (nn, ".jpg") || r_str_casestr (nn, ".png") || r_str_casestr (nn, ".gif")) {
   icon = eIMG;
  } else if (*nn == '.') {
   icon = eHID;
  }
  res = r_str_appendf (res, "%s %s\n", icon, nn);
 } else if (printfmt == FMT_RAW) {
  res = r_str_appendf (res, "%c%s%s%s  1 %4d:%-4d  %-10d  %s\n",
   isdir?'d': fch,
   u_rwx? u_rwx: "-",
   r_str_rwx_i ((perm >> 3) & 7),
   r_str_rwx_i (perm & 7),
   uid, gid, sz, nn);
 } else if (printfmt == FMT_JSON) {
  if (nth > 0) {
   res = r_str_append (res, ",");
  }
  res = r_str_appendf (res, "{\"name\":\"%s\",\"size\":%d,\"uid\":%d,"
   "\"gid\":%d,\"perm\":%d,\"isdir\":%s}",
   name, sz, uid, gid, perm, isdir? "true": "false");
 }
 free (nn);
 free (u_rwx);
 return res;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char wchar_t ;
struct stat {scalar_t__ st_atime; int st_mode; } ;
struct dirent {char* d_name; } ;
typedef int fullpath ;
struct TYPE_7__ {int cFileName; } ;
typedef TYPE_1__ WIN32_FIND_DATAW ;
struct TYPE_8__ {float type; scalar_t__ time; } ;
typedef int RList ;
typedef int RFSRoot ;
typedef TYPE_2__ RFSFile ;
typedef scalar_t__ HANDLE ;
typedef int DIR ;


 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFileW (char*,TYPE_1__*) ;
 scalar_t__ FindNextFileW (scalar_t__,TYPE_1__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 scalar_t__ S_ISDIR (int ) ;
 int _countof (char*) ;
 int closedir (int *) ;
 int free (char*) ;
 int * opendir (char const*) ;
 TYPE_2__* r_fs_file_new (int *,char*) ;
 int r_list_append (int *,TYPE_2__*) ;
 int r_list_free (int *) ;
 int * r_list_new () ;
 char* r_utf16_to_utf8 (int ) ;
 char* r_utf8_to_utf16 (char const*) ;
 struct dirent* readdir (int *) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 int stat (char*,struct stat*) ;
 int swprintf (char*,int ,char*,char*) ;

__attribute__((used)) static RList *fs_posix_dir(RFSRoot *root, const char *path, int view ) {
 RList *list;
 char fullpath[4096];
 struct stat st;







 struct dirent *de;
 DIR *dir;

 list = r_list_new ();
 if (!list) {
  return ((void*)0);
 }
 dir = opendir (path);
 if (!dir) {
  r_list_free (list);
  return ((void*)0);
 }
 while ((de = readdir (dir))) {
  RFSFile *fsf = r_fs_file_new (((void*)0), de->d_name);
  if (!fsf) {
   r_list_free (list);
   closedir (dir);
   return ((void*)0);
  }
  fsf->type = 'f';
  snprintf (fullpath, sizeof (fullpath)-1, "%s/%s", path, de->d_name);
  if (!stat (fullpath, &st)) {
   fsf->type = S_ISDIR (st.st_mode)?'d':'f';
   fsf->time = st.st_atime;
  } else {
   fsf->type = 'f';
   fsf->time = 0;
  }
  r_list_append (list, fsf);
 }
 closedir (dir);

 return list;
}

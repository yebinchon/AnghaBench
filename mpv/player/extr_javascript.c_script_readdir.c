
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct dirent {char* d_name; } ;
typedef int js_State ;
typedef int DIR ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int add_af_dir (void*,int *) ;
 int checkopt (int *,int,char*,char const**,char*) ;
 int jctx (int *) ;
 scalar_t__ js_isundefined (int *,int) ;
 int js_newarray (int *) ;
 int js_pushstring (int *,char*) ;
 int js_setindex (int *,int,int ) ;
 char* js_tostring (int *,int) ;
 int * opendir (char const*) ;
 int push_failure (int *,char*) ;
 struct dirent* readdir (int *) ;
 int set_last_error (int ,int ,int *) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* talloc_asprintf_append (char*,char*,char const*,char*) ;
 char* talloc_strdup (void*,char*) ;

__attribute__((used)) static void script_readdir(js_State *J, void *af)
{

    const char *filters[] = {"all", "files", "dirs", "normal", ((void*)0)};
    const char *path = js_isundefined(J, 1) ? "." : js_tostring(J, 1);
    int t = checkopt(J, 2, "normal", filters, "listing filter");

    DIR *dir = opendir(path);
    if (!dir) {
        push_failure(J, "Cannot open dir");
        return;
    }
    add_af_dir(af, dir);
    set_last_error(jctx(J), 0, ((void*)0));
    js_newarray(J);
    char *fullpath = talloc_strdup(af, "");
    struct dirent *e;
    int n = 0;
    while ((e = readdir(dir))) {
        char *name = e->d_name;
        if (t) {
            if (strcmp(name, ".") == 0 || strcmp(name, "..") == 0)
                continue;
            if (fullpath)
                fullpath[0] = '\0';
            fullpath = talloc_asprintf_append(fullpath, "%s/%s", path, name);
            struct stat st;
            if (stat(fullpath, &st))
                continue;
            if (!(((t & 1) && S_ISREG(st.st_mode)) ||
                  ((t & 2) && S_ISDIR(st.st_mode))))
            {
                continue;
            }
        }
        js_pushstring(J, name);
        js_setindex(J, -2, n++);
    }
}

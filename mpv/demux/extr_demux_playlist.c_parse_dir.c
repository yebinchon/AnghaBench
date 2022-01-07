
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int dummy; } ;
struct pl_parser {int add_base; int pl; TYPE_1__* real_stream; scalar_t__ probing; } ;
typedef int files ;
struct TYPE_2__ {int url; int is_directory; } ;


 int MAX_DIR_STACK ;
 int bstr0 (int ) ;
 int cmp_filename ;
 char* mp_file_get_path (struct pl_parser*,int ) ;
 int playlist_add_file (int ,char*) ;
 int qsort (char**,int,int,int ) ;
 int scan_dir (struct pl_parser*,char*,struct stat*,int ,char***,int*) ;

__attribute__((used)) static int parse_dir(struct pl_parser *p)
{
    if (!p->real_stream->is_directory)
        return -1;
    if (p->probing)
        return 0;

    char *path = mp_file_get_path(p, bstr0(p->real_stream->url));
    if (!path)
        return -1;

    char **files = ((void*)0);
    int num_files = 0;
    struct stat dir_stack[MAX_DIR_STACK];

    scan_dir(p, path, dir_stack, 0, &files, &num_files);

    if (files)
        qsort(files, num_files, sizeof(files[0]), cmp_filename);

    for (int n = 0; n < num_files; n++)
        playlist_add_file(p->pl, files[n]);

    p->add_base = 0;

    return num_files > 0 ? 0 : -1;
}

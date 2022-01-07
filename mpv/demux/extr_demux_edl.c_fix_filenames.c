
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_parts {int num_parts; struct tl_part* parts; } ;
struct tl_part {int filename; } ;
struct bstr {int dummy; } ;


 int bstr0 (char*) ;
 char* mp_basename (int ) ;
 struct bstr mp_dirname (char*) ;
 int mp_path_join_bstr (struct tl_parts*,struct bstr,int ) ;

__attribute__((used)) static void fix_filenames(struct tl_parts *parts, char *source_path)
{
    struct bstr dirname = mp_dirname(source_path);
    for (int n = 0; n < parts->num_parts; n++) {
        struct tl_part *part = &parts->parts[n];
        char *filename = mp_basename(part->filename);
        part->filename = mp_path_join_bstr(parts, dirname, bstr0(filename));
    }
}

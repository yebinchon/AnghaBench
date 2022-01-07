
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_serve_files_settings {size_t read_ahead; int auto_index_readme; int directory_list_template; int auto_index; int serve_precompressed_files; int index_html; int root_path; } ;
struct hash {int dummy; } ;


 int SERVE_FILES_READ_AHEAD_BYTES ;
 int hash_find (struct hash const*,char*) ;
 int parse_bool (int ,int) ;
 int parse_long (char*,int ) ;
 void* serve_files_create (char const*,struct lwan_serve_files_settings*) ;

__attribute__((used)) static void *serve_files_create_from_hash(const char *prefix,
                                          const struct hash *hash)
{
    struct lwan_serve_files_settings settings = {
        .root_path = hash_find(hash, "path"),
        .index_html = hash_find(hash, "index_path"),
        .serve_precompressed_files =
            parse_bool(hash_find(hash, "serve_precompressed_files"), 1),
        .auto_index = parse_bool(hash_find(hash, "auto_index"), 1),
        .directory_list_template = hash_find(hash, "directory_list_template"),
        .read_ahead =
            (size_t)parse_long("read_ahead", SERVE_FILES_READ_AHEAD_BYTES),
        .auto_index_readme =
            parse_bool(hash_find(hash, "auto_index_readme"), 1),
    };

    return serve_files_create(prefix, &settings);
}

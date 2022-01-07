
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int recursive_config_double_dir_load (char const*,char const*,char const*,int ,int *,int ) ;
 int statsd_file_callback ;

__attribute__((used)) static inline void statsd_readdir(const char *user_path, const char *stock_path, const char *subpath) {
    recursive_config_double_dir_load(user_path, stock_path, subpath, statsd_file_callback, ((void*)0), 0);
}

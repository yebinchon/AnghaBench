
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strstr (char const*,char*) ;

__attribute__((used)) static int r_io_zip_has_uri_substr(const char *file) {
 return (file && strstr (file, "://"));
}

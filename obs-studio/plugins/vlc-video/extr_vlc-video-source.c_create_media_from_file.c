
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_t ;


 int libvlc ;
 int * libvlc_media_new_location_ (int ,char const*) ;
 int * libvlc_media_new_path_ (int ,char const*) ;
 int * strstr (char const*,char*) ;

__attribute__((used)) static inline libvlc_media_t *create_media_from_file(const char *file)
{
 return (file && strstr(file, "://") != ((void*)0))
         ? libvlc_media_new_location_(libvlc, file)
         : libvlc_media_new_path_(libvlc, file);
}

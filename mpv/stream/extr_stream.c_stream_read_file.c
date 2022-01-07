
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_global {int dummy; } ;
struct bstr {int member_0; } ;
typedef int stream_t ;


 int free_stream (int *) ;
 char* mp_get_user_path (int *,struct mpv_global*,char const*) ;
 int * stream_open (char*,struct mpv_global*) ;
 struct bstr stream_read_complete (int *,void*,int) ;
 int talloc_free (char*) ;

struct bstr stream_read_file(const char *filename, void *talloc_ctx,
                             struct mpv_global *global, int max_size)
{
    struct bstr res = {0};
    char *fname = mp_get_user_path(((void*)0), global, filename);
    stream_t *s = stream_open(fname, global);
    if (s) {
        res = stream_read_complete(s, talloc_ctx, max_size);
        free_stream(s);
    }
    talloc_free(fname);
    return res;
}

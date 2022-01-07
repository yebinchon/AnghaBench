
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int playback_abort; } ;
typedef enum stream_type { ____Placeholder_stream_type } stream_type ;


 int mp_add_external_file (struct MPContext*,char*,int,int ) ;
 char** mp_dup_str_array (void*,char**) ;
 int talloc_free (void*) ;
 void* talloc_new (int *) ;

__attribute__((used)) static void open_external_files(struct MPContext *mpctx, char **files,
                                enum stream_type filter)
{

    void *tmp = talloc_new(((void*)0));
    files = mp_dup_str_array(tmp, files);

    for (int n = 0; files && files[n]; n++)
        mp_add_external_file(mpctx, files[n], filter, mpctx->playback_abort);

    talloc_free(tmp);
}

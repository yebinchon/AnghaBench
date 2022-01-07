
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ass_state {int * log; int * library; int * render; int * track; } ;


 int ass_free_track (int *) ;
 int ass_library_done (int *) ;
 int ass_renderer_done (int *) ;
 int talloc_free (int *) ;

__attribute__((used)) static void destroy_ass_renderer(struct ass_state *ass)
{
    if (ass->track)
        ass_free_track(ass->track);
    ass->track = ((void*)0);
    if (ass->render)
        ass_renderer_done(ass->render);
    ass->render = ((void*)0);
    if (ass->library)
        ass_library_done(ass->library);
    ass->library = ((void*)0);
    talloc_free(ass->log);
    ass->log = ((void*)0);
}

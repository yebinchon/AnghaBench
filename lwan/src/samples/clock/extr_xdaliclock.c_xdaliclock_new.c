
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdaliclock {int* target_digits; int* current_digits; int * gif_enc; int frame; void* clear_frame; void* temp_frame; } ;
typedef int ge_GIF ;


 int FRAMES_PER_SECOND ;
 unsigned int N_ELEMENTS (int*) ;
 int char_height ;
 int char_width ;
 void* frame_mk (int ,int ) ;
 int free (struct xdaliclock*) ;
 struct xdaliclock* malloc (int) ;

struct xdaliclock *xdaliclock_new(ge_GIF *ge)
{
    struct xdaliclock *xdc = malloc(sizeof(*xdc));

    if (!xdc)
        return ((void*)0);

    xdc->temp_frame = frame_mk(char_width, char_height);
    if (!xdc->temp_frame)
        goto out;

    xdc->clear_frame = frame_mk(char_width, char_height);
    if (!xdc->clear_frame)
        goto out;

    for (unsigned int i = 0; i < N_ELEMENTS(xdc->target_digits); i++)
        xdc->target_digits[i] = xdc->current_digits[i] = -1;


    xdc->frame = FRAMES_PER_SECOND;
    xdc->gif_enc = ge;

    return xdc;

out:
    free(xdc);
    return ((void*)0);
}

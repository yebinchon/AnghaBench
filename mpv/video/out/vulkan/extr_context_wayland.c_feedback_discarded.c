
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wp_presentation_feedback {int dummy; } ;


 int wp_presentation_feedback_destroy (struct wp_presentation_feedback*) ;

__attribute__((used)) static void feedback_discarded(void *data, struct wp_presentation_feedback *fback)
{
    wp_presentation_feedback_destroy(fback);
}

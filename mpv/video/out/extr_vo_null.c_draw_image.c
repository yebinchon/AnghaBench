
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {int dummy; } ;
typedef int mp_image_t ;


 int talloc_free (int *) ;

__attribute__((used)) static void draw_image(struct vo *vo, mp_image_t *mpi)
{
    talloc_free(mpi);
}

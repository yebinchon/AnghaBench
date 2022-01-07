
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_NUMBER_OF_SLAB_CLASSES ;
 int POWER_SMALLEST ;
 scalar_t__ do_slabs_newslab (int) ;
 int exit (int) ;
 int fprintf (int ,char*,int) ;
 int power_largest ;
 int stderr ;

__attribute__((used)) static void slabs_preallocate (const unsigned int maxslabs) {
    int i;
    unsigned int prealloc = 0;







    for (i = POWER_SMALLEST; i < MAX_NUMBER_OF_SLAB_CLASSES; i++) {
        if (++prealloc > maxslabs)
            break;
        if (do_slabs_newslab(i) == 0) {
            fprintf(stderr, "Error while preallocating slab memory!\n"
                "If using -L or other prealloc options, max memory must be "
                "at least %d megabytes.\n", power_largest);
            exit(1);
        }
    }
}

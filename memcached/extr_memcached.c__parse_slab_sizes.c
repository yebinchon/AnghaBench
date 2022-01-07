
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int chunk_size; int slab_chunk_size_max; } ;


 int CHUNK_ALIGN_BYTES ;
 int MAX_NUMBER_OF_SLAB_CLASSES ;
 int fprintf (int ,char*,...) ;
 int safe_strtoul (char*,int*) ;
 TYPE_1__ settings ;
 int stderr ;
 int strlen (char*) ;
 char* strtok_r (char*,char*,char**) ;

__attribute__((used)) static bool _parse_slab_sizes(char *s, uint32_t *slab_sizes) {
    char *b = ((void*)0);
    uint32_t size = 0;
    int i = 0;
    uint32_t last_size = 0;

    if (strlen(s) < 1)
        return 0;

    for (char *p = strtok_r(s, "-", &b);
         p != ((void*)0);
         p = strtok_r(((void*)0), "-", &b)) {
        if (!safe_strtoul(p, &size) || size < settings.chunk_size
             || size > settings.slab_chunk_size_max) {
            fprintf(stderr, "slab size %u is out of valid range\n", size);
            return 0;
        }
        if (last_size >= size) {
            fprintf(stderr, "slab size %u cannot be lower than or equal to a previous class size\n", size);
            return 0;
        }
        if (size <= last_size + CHUNK_ALIGN_BYTES) {
            fprintf(stderr, "slab size %u must be at least %d bytes larger than previous class\n",
                    size, CHUNK_ALIGN_BYTES);
            return 0;
        }
        slab_sizes[i++] = size;
        last_size = size;
        if (i >= MAX_NUMBER_OF_SLAB_CLASSES-1) {
            fprintf(stderr, "too many slab classes specified\n");
            return 0;
        }
    }

    slab_sizes[i] = 0;
    return 1;
}

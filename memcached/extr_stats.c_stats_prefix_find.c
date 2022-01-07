
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_8__ {char const prefix_delimiter; } ;
struct TYPE_7__ {char* prefix; size_t prefix_len; struct TYPE_7__* next; } ;
typedef TYPE_1__ PREFIX_STATS ;


 size_t PREFIX_HASH_SIZE ;
 int assert (int ) ;
 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 size_t hash (char const*,size_t) ;
 char* malloc (size_t) ;
 int num_prefixes ;
 int perror (char*) ;
 TYPE_1__** prefix_stats ;
 TYPE_3__ settings ;
 scalar_t__ strncmp (char*,char const*,size_t) ;
 int strncpy (char*,char const*,size_t) ;
 size_t total_prefix_size ;

__attribute__((used)) static PREFIX_STATS *stats_prefix_find(const char *key, const size_t nkey) {
    PREFIX_STATS *pfs;
    uint32_t hashval;
    size_t length;
    bool bailout = 1;

    assert(key != ((void*)0));

    for (length = 0; length < nkey && key[length] != '\0'; length++) {
        if (key[length] == settings.prefix_delimiter) {
            bailout = 0;
            break;
        }
    }

    if (bailout) {
        return ((void*)0);
    }

    hashval = hash(key, length) % PREFIX_HASH_SIZE;

    for (pfs = prefix_stats[hashval]; ((void*)0) != pfs; pfs = pfs->next) {
        if (strncmp(pfs->prefix, key, length) == 0)
            return pfs;
    }

    pfs = calloc(sizeof(PREFIX_STATS), 1);
    if (((void*)0) == pfs) {
        perror("Can't allocate space for stats structure: calloc");
        return ((void*)0);
    }

    pfs->prefix = malloc(length + 1);
    if (((void*)0) == pfs->prefix) {
        perror("Can't allocate space for copy of prefix: malloc");
        free(pfs);
        return ((void*)0);
    }

    strncpy(pfs->prefix, key, length);
    pfs->prefix[length] = '\0';
    pfs->prefix_len = length;

    pfs->next = prefix_stats[hashval];
    prefix_stats[hashval] = pfs;

    num_prefixes++;
    total_prefix_size += length;

    return pfs;
}

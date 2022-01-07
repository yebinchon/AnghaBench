
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ingest {int url; int name; } ;
struct TYPE_3__ {size_t num; struct ingest* array; } ;


 int bfree (int ) ;
 TYPE_1__ cur_ingests ;
 int da_free (TYPE_1__) ;

__attribute__((used)) static void free_ingests(void)
{
 for (size_t i = 0; i < cur_ingests.num; i++) {
  struct ingest *ingest = cur_ingests.array + i;
  bfree(ingest->name);
  bfree(ingest->url);
 }

 da_free(cur_ingests);
}

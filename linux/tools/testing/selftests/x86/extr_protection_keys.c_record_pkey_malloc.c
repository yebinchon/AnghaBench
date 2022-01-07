
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pkey_malloc_record {long size; int prot; void* ptr; } ;


 int dprintf2 (char*,size_t) ;
 int dprintf3 (char*,int,struct pkey_malloc_record*,void*,long) ;
 int memset (struct pkey_malloc_record*,int ,int) ;
 long nr_pkey_malloc_records ;
 int pkey_assert (int ) ;
 struct pkey_malloc_record* pkey_last_malloc_record ;
 struct pkey_malloc_record* pkey_malloc_records ;
 struct pkey_malloc_record* realloc (struct pkey_malloc_record*,size_t) ;

void record_pkey_malloc(void *ptr, long size, int prot)
{
 long i;
 struct pkey_malloc_record *rec = ((void*)0);

 for (i = 0; i < nr_pkey_malloc_records; i++) {
  rec = &pkey_malloc_records[i];

  if (rec)
   break;
 }
 if (!rec) {

  size_t old_nr_records = nr_pkey_malloc_records;
  size_t new_nr_records = (nr_pkey_malloc_records * 2 + 1);
  size_t new_size = new_nr_records * sizeof(struct pkey_malloc_record);
  dprintf2("new_nr_records: %zd\n", new_nr_records);
  dprintf2("new_size: %zd\n", new_size);
  pkey_malloc_records = realloc(pkey_malloc_records, new_size);
  pkey_assert(pkey_malloc_records != ((void*)0));
  rec = &pkey_malloc_records[nr_pkey_malloc_records];




  for (i = 0; i < new_nr_records - old_nr_records; i++)
   memset(rec + i, 0, sizeof(*rec));
 }
 dprintf3("filling malloc record[%d/%p]: {%p, %ld}\n",
  (int)(rec - pkey_malloc_records), rec, ptr, size);
 rec->ptr = ptr;
 rec->size = size;
 rec->prot = prot;
 pkey_last_malloc_record = rec;
 nr_pkey_malloc_records++;
}

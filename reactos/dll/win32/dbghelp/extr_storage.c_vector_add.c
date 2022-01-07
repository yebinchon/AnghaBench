
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector {unsigned int num_elts; unsigned int num_buckets; unsigned int shift; int buckets_allocated; void** buckets; unsigned int elt_size; } ;
struct pool {int dummy; } ;


 int assert (int) ;
 int memcpy (void*,void**,int) ;
 void* pool_alloc (struct pool*,unsigned int) ;
 void* vector_at (struct vector*,unsigned int) ;

void* vector_add(struct vector* v, struct pool* pool)
{
    unsigned ncurr = v->num_elts++;


    assert(v->num_elts > ncurr);
    if (ncurr == (v->num_buckets << v->shift))
    {
        if(v->num_buckets == v->buckets_allocated)
        {

            unsigned new_reserved;
            void* new;

            new_reserved = 2*v->buckets_allocated;
            if(new_reserved == 0) new_reserved = 1;



            new = pool_alloc(pool, new_reserved * sizeof(void*));
            memcpy(new, v->buckets, v->buckets_allocated * sizeof(void*));
            v->buckets = new;
            v->buckets_allocated = new_reserved;
        }
        v->buckets[v->num_buckets] = pool_alloc(pool, v->elt_size << v->shift);
        return v->buckets[v->num_buckets++];
    }
    return vector_at(v, ncurr);
}

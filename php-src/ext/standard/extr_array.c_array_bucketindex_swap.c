
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bucketindex {int dummy; } ;



__attribute__((used)) static void array_bucketindex_swap(void *p, void *q)
{
 struct bucketindex *f = (struct bucketindex *)p;
 struct bucketindex *g = (struct bucketindex *)q;
 struct bucketindex t;
 t = *f;
 *f = *g;
 *g = t;
}

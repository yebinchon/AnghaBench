
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Bucket ;



__attribute__((used)) static void array_bucket_p_sawp(void *p, void *q) {
 Bucket *t;
 Bucket **f = (Bucket **)p;
 Bucket **g = (Bucket **)q;

 t = *f;
 *f = *g;
 *g = t;
}

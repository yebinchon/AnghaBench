
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* data; } ;
typedef TYPE_1__ RBufferSparse ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void buffer_sparse_free(void *a) {
 RBufferSparse *s = (RBufferSparse *)a;
 free (s->data);
 free (s);
}

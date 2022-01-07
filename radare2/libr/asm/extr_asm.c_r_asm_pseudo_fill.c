
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int ut8 ;
typedef int RAsmOp ;


 int free (int *) ;
 int * malloc (int) ;
 int memcpy (int *,int*,int) ;
 int r_asm_op_set_buf (int *,int *,int) ;
 int sscanf (char*,char*,int*,int*,int*) ;

__attribute__((used)) static inline int r_asm_pseudo_fill(RAsmOp *op, char *input) {
 int i, repeat = 0, size=0, value=0;
 sscanf (input, "%d,%d,%d", &repeat, &size, &value);
 size *= (sizeof (value) * repeat);
 if (size > 0) {
  ut8 *buf = malloc (size);
  for (i = 0; i < size; i+= sizeof(value)) {
   memcpy (&buf[i], &value, sizeof(value));
  }
  r_asm_op_set_buf (op, buf, size);
  free (buf);
 } else {
  size = 0;
 }
 return size;
}

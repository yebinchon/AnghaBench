
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int length; } ;
typedef TYPE_1__ RFlirtNode ;
typedef int RBuffer ;


 scalar_t__ buf_eof ;
 scalar_t__ buf_err ;
 int eprintf (char*,int ) ;
 int read_byte (int *) ;

__attribute__((used)) static ut8 read_node_length(RFlirtNode *node, RBuffer *b) {
 node->length = read_byte (b);
 if (buf_eof || buf_err) {
  return 0;
 }



 return 1;
}

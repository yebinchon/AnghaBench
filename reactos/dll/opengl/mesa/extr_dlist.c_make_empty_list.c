
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int opcode; } ;
typedef TYPE_1__ Node ;


 int OPCODE_END_OF_LIST ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static Node *make_empty_list( void )
{
   Node *n = (Node *) malloc( sizeof(Node) );
   n[0].opcode = OPCODE_END_OF_LIST;
   return n;
}

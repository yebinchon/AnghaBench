
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int queue ;


 int Q_IsEmpty (int *) ;
 int Q_PopHead (int *) ;

void Q_Destroy(queue *q)
{
   while(!Q_IsEmpty(q)) {
      Q_PopHead(q);
   }
}

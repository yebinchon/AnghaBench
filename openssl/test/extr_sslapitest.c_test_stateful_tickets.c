
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_tickets (int,int) ;

__attribute__((used)) static int test_stateful_tickets(int idx)
{
    return test_tickets(1, idx);
}

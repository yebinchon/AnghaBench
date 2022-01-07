
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int per_event_excludes ;
 int test_harness (int ,char*) ;

int main(void)
{
 return test_harness(per_event_excludes, "per_event_excludes");
}

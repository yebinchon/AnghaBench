
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int splice (int ,int ,int,int ,int,int ) ;

int main(int argc, char **argv)
{
        splice(0, 0, 1, 0, 1<<30, 0);
 return 0;
}

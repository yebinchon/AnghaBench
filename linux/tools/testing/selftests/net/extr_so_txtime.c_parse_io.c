
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timed_send {int delay_us; char data; } ;


 int MAX_NUM_PKT ;
 int errno ;
 int error (int,int ,char*,...) ;
 int free (char*) ;
 char* strdup (char const*) ;
 char* strtok (char*,char*) ;
 int strtol (char*,int *,int ) ;

__attribute__((used)) static int parse_io(const char *optarg, struct timed_send *array)
{
 char *arg, *tok;
 int aoff = 0;

 arg = strdup(optarg);
 if (!arg)
  error(1, errno, "strdup");

 while ((tok = strtok(arg, ","))) {
  arg = ((void*)0);

  if (aoff / 2 == MAX_NUM_PKT)
   error(1, 0, "exceeds max pkt count (%d)", MAX_NUM_PKT);

  if (aoff & 1) {
   array->delay_us = strtol(tok, ((void*)0), 0) * 1000;
   array++;
  } else {
   array->data = tok[0];
  }

  aoff++;
 }

 free(arg);

 return aoff / 2;
}

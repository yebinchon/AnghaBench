
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;


 int fprintf (int ,char*,char const*,char const*,int ) ;
 int stdout ;

__attribute__((used)) static inline void send_BEGIN(const char *type, const char *id, usec_t usec) {
    fprintf(stdout, "BEGIN %s.%s %llu\n", type, id, usec);
}

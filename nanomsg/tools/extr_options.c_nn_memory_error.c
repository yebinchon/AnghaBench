
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_parse_context {char** argv; } ;


 int abort () ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void nn_memory_error (struct nn_parse_context *ctx) {
    fprintf (stderr, "%s: Memory error while parsing command-line",
        ctx->argv[0]);
    abort ();
}
